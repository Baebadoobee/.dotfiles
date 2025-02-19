static const char norm_fg[] = "#c9c7cf";
static const char norm_bg[] = "#282240";
static const char norm_border[] = "#716c84";

static const char sel_fg[] = "#c9c7cf";
static const char sel_bg[] = "#689AF3";
static const char sel_border[] = "#c9c7cf";

static const char urg_fg[] = "#c9c7cf";
static const char urg_bg[] = "#4E9BFA";
static const char urg_border[] = "#4E9BFA";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
