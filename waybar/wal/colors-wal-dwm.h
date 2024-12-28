static const char norm_fg[] = "#c2c2c3";
static const char norm_bg[] = "#0d0d12";
static const char norm_border[] = "#58586c";

static const char sel_fg[] = "#c2c2c3";
static const char sel_bg[] = "#B4726C";
static const char sel_border[] = "#c2c2c3";

static const char urg_fg[] = "#c2c2c3";
static const char urg_bg[] = "#684D60";
static const char urg_border[] = "#684D60";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
