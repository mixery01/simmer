#ifndef PROCESS_H
#define PROCESS_H

#include "entity.h"

/**
 * Abstract class for processes, active entities that need a method run().
 */
class Process : public Entity {
public:
  Process(Simulator* sim, const std::string& name, int mon, int priority = 0)
    : Entity(sim, name, mon), priority(priority) {}
  virtual void run() = 0;
  virtual bool activate(double delay = 0);
  virtual bool deactivate();

protected:
  int priority;
};

#endif
