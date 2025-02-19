(************************************************************************)
(*         *      The Rocq Prover / The Rocq Development Team           *)
(*  v      *         Copyright INRIA, CNRS and contributors             *)
(* <O___,, * (see version control and CREDITS file for authors & dates) *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

(** * Morphism instances for relations.

   Author: Matthieu Sozeau
   Institution: LRI, CNRS UMR 8623 - University Paris Sud
*)

From Stdlib Require Import Relation_Definitions.
From Stdlib.Classes Require Import Morphisms.
From Stdlib.Program Require Import Program.

Generalizable Variables A l.

(** Morphisms for relations *)

#[global]
Instance relation_conjunction_morphism {A} : Proper (relation_equivalence (A:=A) ==>
  relation_equivalence ==> relation_equivalence) relation_conjunction.
  Proof. firstorder. Qed.

#[global]
Instance relation_disjunction_morphism {A} : Proper (relation_equivalence (A:=A) ==>
  relation_equivalence ==> relation_equivalence) relation_disjunction.
  Proof. firstorder. Qed.

(* Predicate equivalence is exactly the same as the pointwise lifting of [iff]. *)

Lemma predicate_equivalence_pointwise (l : Tlist) :
  Proper (@predicate_equivalence l ==> pointwise_lifting iff l) id.
Proof. do 2 red. unfold predicate_equivalence. auto. Qed.

Lemma predicate_implication_pointwise (l : Tlist) :
  Proper (@predicate_implication l ==> pointwise_lifting impl l) id.
Proof. do 2 red. unfold predicate_implication. auto. Qed.

(** The instantiation at relation allows rewriting applications of relations
    [R x y] to [R' x y]  when [R] and [R'] are in [relation_equivalence]. *)

#[global]
Instance relation_equivalence_pointwise {A} :
  Proper (relation_equivalence ==> pointwise_relation A (pointwise_relation A iff)) id.
Proof. intro. apply (predicate_equivalence_pointwise (Tcons A (Tcons A Tnil))). Qed.

#[global]
Instance subrelation_pointwise {A} :
  Proper (subrelation ==> pointwise_relation A (pointwise_relation A impl)) id.
Proof. intro. apply (predicate_implication_pointwise (Tcons A (Tcons A Tnil))). Qed.


Lemma flip_pointwise_relation A (R : relation A) :
  relation_equivalence (pointwise_relation A (flip R)) (flip (pointwise_relation A R)).
Proof. intros. split; firstorder. Qed.
