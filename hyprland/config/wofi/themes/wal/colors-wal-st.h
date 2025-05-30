const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#282240", /* black   */
  [1] = "#4E9BFA", /* red     */
  [2] = "#689AF3", /* green   */
  [3] = "#6EAFFB", /* yellow  */
  [4] = "#9796B5", /* blue    */
  [5] = "#93A7E6", /* magenta */
  [6] = "#8DB9F8", /* cyan    */
  [7] = "#c9c7cf", /* white   */

  /* 8 bright colors */
  [8]  = "#716c84",  /* black   */
  [9]  = "#4E9BFA",  /* red     */
  [10] = "#689AF3", /* green   */
  [11] = "#6EAFFB", /* yellow  */
  [12] = "#9796B5", /* blue    */
  [13] = "#93A7E6", /* magenta */
  [14] = "#8DB9F8", /* cyan    */
  [15] = "#c9c7cf", /* white   */

  /* special colors */
  [256] = "#282240", /* background */
  [257] = "#c9c7cf", /* foreground */
  [258] = "#c9c7cf",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
