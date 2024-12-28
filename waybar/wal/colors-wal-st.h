const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0d1012", /* black   */
  [1] = "#E7492B", /* red     */
  [2] = "#7C8472", /* green   */
  [3] = "#9B8C76", /* yellow  */
  [4] = "#AEA68B", /* blue    */
  [5] = "#CCB797", /* magenta */
  [6] = "#E9DDB5", /* cyan    */
  [7] = "#c2c3c3", /* white   */

  /* 8 bright colors */
  [8]  = "#58656c",  /* black   */
  [9]  = "#E7492B",  /* red     */
  [10] = "#7C8472", /* green   */
  [11] = "#9B8C76", /* yellow  */
  [12] = "#AEA68B", /* blue    */
  [13] = "#CCB797", /* magenta */
  [14] = "#E9DDB5", /* cyan    */
  [15] = "#c2c3c3", /* white   */

  /* special colors */
  [256] = "#0d1012", /* background */
  [257] = "#c2c3c3", /* foreground */
  [258] = "#c2c3c3",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
