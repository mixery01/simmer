% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simmer-methods.R
\name{add_resource}
\alias{add_resource}
\title{Add a Resource}
\usage{
add_resource(.env, name, capacity = 1, queue_size = Inf, mon = TRUE,
  preemptive = FALSE, preempt_order = c("fifo", "lifo"),
  queue_size_strict = FALSE)
}
\arguments{
\item{.env}{the simulation environment.}

\item{name}{the name of the resource.}

\item{capacity}{the capacity of the server.}

\item{queue_size}{the size of the queue.}

\item{mon}{whether the simulator must monitor this resource or not.}

\item{preemptive}{whether arrivals in the server can be preempted or not based
on seize priorities.}

\item{preempt_order}{if the resource is preemptive and preemption occurs with
more than one arrival in the server, this parameter defines which arrival should
be preempted first. It must be \code{fifo} (First In First Out: older preemptible
tasks are preempted first) or \code{lifo} (Last In First Out: newer preemptible tasks
are preempted first).}

\item{queue_size_strict}{if the resource is preemptive and preemption occurs,
this parameter controls whether the \code{queue_size} is a hard limit. By default,
preempted arrivals go to a dedicated queue, so that \code{queue_size} may be
exceeded. If this option is \code{TRUE}, preempted arrivals go to the standard
queue, and the maximum \code{queue_size} is guaranteed (rejection may occur).}
}
\value{
Returns the simulation environment.
}
\description{
Define a new resource in a simulation environment.
}
\seealso{
Convenience functions: \code{\link{schedule}}.
}
