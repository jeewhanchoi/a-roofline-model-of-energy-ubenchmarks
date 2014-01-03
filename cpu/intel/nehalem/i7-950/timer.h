struct stopwatch_t;

/** \brief Initialize timing library. Call ONCE per application run. */
void stopwatch_init (void);

/** \brief Creates a 'stopwatch'. */
struct stopwatch_t* stopwatch_create (void);

/** \brief Destroy a 'stopwatch'. */
void stopwatch_destroy (struct stopwatch_t *);

/** \brief Turn stopwatch on. */
void stopwatch_start (struct stopwatch_t *);

/** \brief Turn stopwatch off and return elapsed time, in seconds. */
long double stopwatch_stop (struct stopwatch_t *);

/** \brief If on, return elapsed time since last call to stopwatch_start();
 * otherwise, return elapsed time at last call to stopwatch_stop().
 */
long double stopwatch_elapsed (struct stopwatch_t *);

