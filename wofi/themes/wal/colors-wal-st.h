const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0d0d12", /* black   */
  [1] = "#684D60", /* red     */
  [2] = "#B4726C", /* green   */
  [3] = "#546E94", /* yellow  */
  [4] = "#9674A1", /* blue    */
  [5] = "#F3758D", /* magenta */
  [6] = "#43B1DB", /* cyan    */
  [7] = "#c2c2c3", /* white   */

  /* 8 bright colors */
  [8]  = "#58586c",  /* black   */
  [9]  = "#684D60",  /* red     */
  [10] = "#B4726C", /* green   */
  [11] = "#546E94", /* yellow  */
  [12] = "#9674A1", /* blue    */
  [13] = "#F3758D", /* magenta */
  [14] = "#43B1DB", /* cyan    */
  [15] = "#c2c2c3", /* white   */

  /* special colors */
  [256] = "#0d0d12", /* background */
  [257] = "#c2c2c3", /* foreground */
  [258] = "#c2c2c3",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
