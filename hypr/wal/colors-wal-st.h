const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0f1016", /* black   */
  [1] = "#5C7BB9", /* red     */
  [2] = "#A46C99", /* green   */
  [3] = "#D9769B", /* yellow  */
  [4] = "#EB7797", /* blue    */
  [5] = "#CF7AA9", /* magenta */
  [6] = "#A77DC2", /* cyan    */
  [7] = "#c3c3c4", /* white   */

  /* 8 bright colors */
  [8]  = "#5a5a6f",  /* black   */
  [9]  = "#5C7BB9",  /* red     */
  [10] = "#A46C99", /* green   */
  [11] = "#D9769B", /* yellow  */
  [12] = "#EB7797", /* blue    */
  [13] = "#CF7AA9", /* magenta */
  [14] = "#A77DC2", /* cyan    */
  [15] = "#c3c3c4", /* white   */

  /* special colors */
  [256] = "#0f1016", /* background */
  [257] = "#c3c3c4", /* foreground */
  [258] = "#c3c3c4",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
