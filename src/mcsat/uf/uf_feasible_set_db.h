/*
 * This file is part of the Yices SMT Solver.
 * Copyright (C) 2017 SRI International.
 *
 * Yices is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Yices is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Yices.  If not, see <http://www.gnu.org/licenses/>.
 */
 
#pragma once

#include <stdio.h>

#include "mcsat/variable_db.h"
#include "mcsat/mcsat_types.h"

/** Contains the map from variables to feasible sets that can be backtracked */
typedef struct uf_feasible_set_db_struct uf_feasible_set_db_t;

/** Create a new database */
uf_feasible_set_db_t* uf_feasible_set_db_new(term_table_t* terms, variable_db_t* var_db, const mcsat_trail_t* trail);

/** Delete the database */
void uf_feasible_set_db_delete(uf_feasible_set_db_t* db);

/** Mark that x should be different from given value. */
bool uf_feasible_set_db_set_disequal(uf_feasible_set_db_t* db, variable_t x, uint32_t v, variable_t reason);

/** Mark that x should be equal to the given value. */
bool uf_feasible_set_db_set_equal(uf_feasible_set_db_t* db, variable_t x, uint32_t v, variable_t reason);

/** Get a feasible value. */
uint32_t uf_feasible_set_db_get(uf_feasible_set_db_t* db, variable_t x);

/** Push the context */
void uf_feasible_set_db_push(uf_feasible_set_db_t* db);

/** Pop the context */
void uf_feasible_set_db_pop(uf_feasible_set_db_t* db);

/** Get the reason for a conflict on x. Outputs conjunction of terms to the vector. */
void uf_feasible_set_db_get_conflict(uf_feasible_set_db_t* db, variable_t x, ivector_t* conflict);

/** Get the reason for a propagation on x. */
variable_t uf_feasible_set_db_get_eq_reason(uf_feasible_set_db_t* db, variable_t x);

/** Return any fixed variables */
variable_t uf_feasible_set_db_get_fixed(uf_feasible_set_db_t* db);

/** Print the feasible set database */
void uf_feasible_set_db_print(uf_feasible_set_db_t* db, FILE* out);

/** Print the feasible sets of given variable */
void uf_feasible_set_db_print_var(uf_feasible_set_db_t* db, variable_t var, FILE* out);

/** Marks all the top level reasons */
void uf_feasible_set_db_gc_mark(uf_feasible_set_db_t* db, gc_info_t* gc_vars);

/** Marks all the top level reasons */
void uf_feasible_set_db_gc_sweep(uf_feasible_set_db_t* db, const gc_info_t* gc_vars);
