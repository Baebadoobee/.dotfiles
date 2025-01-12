const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#761727", /* black   */
  [1] = "#6972F2", /* red     */
  [2] = "#D651C1", /* green   */
  [3] = "#E5A5A3", /* yellow  */
  [4] = "#DEC5B4", /* blue    */
  [5] = "#E2C5B5", /* magenta */
  [6] = "#9F9CE6", /* cyan    */
  [7] = "#dcc5c9", /* white   */

  /* 8 bright colors */
  [8]  = "#927a7e",  /* black   */
  [9]  = "#6972F2",  /* red     */
  [10] = "#D651C1", /* green   */
  [11] = "#E5A5A3", /* yellow  */
  [12] = "#DEC5B4", /* blue    */
  [13] = "#E2C5B5", /* magenta */
  [14] = "#9F9CE6", /* cyan    */
  [15] = "#dcc5c9", /* white   */

  /* special colors */
  [256] = "#761727", /* background */
  [257] = "#dcc5c9", /* foreground */
  [258] = "#dcc5c9",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
