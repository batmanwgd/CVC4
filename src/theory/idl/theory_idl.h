#pragma once

#include "cvc4_private.h"

#include "theory/theory.h"
#include "theory/idl/idl_model.h"
#include "theory/idl/idl_assertion_db.h"

namespace CVC4 {
namespace theory {
namespace idl {

/**
 * Handles integer difference logic (IDL) constraints.
 */
class TheoryIdl : public Theory {

  /** The current model */
  IDLModel d_model;

  /** The asserted constraints, organized by variable */
  IDLAssertionDB d_assertionsDB;

  /** Process a new assertion, returns false if in conflict */
  bool processAssertion(const IDLAssertion& assertion);

public:

  /** Theory constructor. */
  TheoryIdl(context::Context* c, context::UserContext* u, OutputChannel& out,
            Valuation valuation, const LogicInfo& logicInfo, QuantifiersEngine* qe);

  /** Pre-processing of input atoms */
  Node ppRewrite(TNode atom);

  /** Check the assertions for satisfiability */
  void check(Effort effort);

  /** Identity string */
  std::string identify() const { return "THEORY_IDL"; }

};/* class TheoryIdl */

}/* CVC4::theory::idl namespace */
}/* CVC4::theory namespace */
}/* CVC4 namespace */
