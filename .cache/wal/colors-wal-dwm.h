static const char norm_fg[] = "#d8ccd6";
static const char norm_bg[] = "#120d15";
static const char norm_border[] = "#978e95";

static const char sel_fg[] = "#d8ccd6";
static const char sel_bg[] = "#314F8E";
static const char sel_border[] = "#d8ccd6";

static const char urg_fg[] = "#d8ccd6";
static const char urg_bg[] = "#A7445A";
static const char urg_border[] = "#A7445A";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
