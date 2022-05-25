﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using SAEP22.Infra;
using SAEP22.Models;

namespace SAEP22.Controllers
{
    public class EquipamentosController : Controller
    {
        private readonly SaepContext _context;

        public EquipamentosController(SaepContext context)
        {
            _context = context;
        }

        [TempData]
        public string Mensagem { get; set; }

        // GET: Equipamentos
        public async Task<IActionResult> Index()
        {
            ViewBag.Perfil = HttpContext.Session.GetString("_Perfil");
            return View(await _context.Equipamentos.ToListAsync());
        }

        // GET: Equipamentos/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var equipamentos = await _context.Equipamentos
                .FirstOrDefaultAsync(m => m.Id == id);
            if (equipamentos == null)
            {
                return NotFound();
            }

            ListarComentarios(equipamentos.Id);
            ViewBag.Perfil = HttpContext.Session.GetString("_Perfil");

            return View(equipamentos);
        }

        // GET: Equipamentos/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Equipamentos/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Equipamento,Imagem,Descricao,Ativo,Data")] Equipamentos equipamentos)
        {
            if (ModelState.IsValid)
            {
                _context.Add(equipamentos);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(equipamentos);
        }

        // GET: Equipamentos/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var equipamentos = await _context.Equipamentos.FindAsync(id);
            if (equipamentos == null)
            {
                return NotFound();
            }
            return View(equipamentos);
        }

        // POST: Equipamentos/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Equipamento,Imagem,Descricao,Ativo,Data")] Equipamentos equipamentos)
        {
            if (id != equipamentos.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(equipamentos);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!EquipamentosExists(equipamentos.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(equipamentos);
        }

        // GET: Equipamentos/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var equipamentos = await _context.Equipamentos
                .FirstOrDefaultAsync(m => m.Id == id);
            if (equipamentos == null)
            {
                return NotFound();
            }

            return View(equipamentos);
        }

        // POST: Equipamentos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var equipamentos = await _context.Equipamentos.FindAsync(id);
            _context.Equipamentos.Remove(equipamentos);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool EquipamentosExists(int id)
        {
            return _context.Equipamentos.Any(e => e.Id == id);
        }

        public void ListarComentarios(int id)
        {
            var comentarios = _context.Comentarios
                .Include(c => c.Perfis)
                .ToList()
                .Where(e => e.IdEquipamento == id)
                .OrderByDescending(m => m.Data);

            if (comentarios != null)
            {
                ViewBag.Comentarios = comentarios;
            }
        }

        public IActionResult Comentar(IFormCollection form)
        {
            Comentarios c = new Comentarios();
            c.Comentario = form["Comentario".ToString()];
            c.IdPerfil = int.Parse(form["IdPerfil"]);
            c.IdEquipamento = int.Parse(form["IdEquipamento"]);
            c.Data = DateTime.Now;

            _context.Comentarios.Add(c);
            _context.SaveChanges();

            Mensagem = "Sucesso! Comentário cadastrado para o equipamento";
            return LocalRedirect("~/equipamentos/details/" + c.IdEquipamento);
        }

    }
}
