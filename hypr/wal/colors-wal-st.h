const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#12111b", /* black   */
  [1] = "#63627C", /* red     */
  [2] = "#586C87", /* green   */
  [3] = "#6B6A84", /* yellow  */
  [4] = "#BC7592", /* blue    */
  [5] = "#7D84A0", /* magenta */
  [6] = "#D99C9B", /* cyan    */
  [7] = "#c3c3c6", /* white   */

  /* 8 bright colors */
  [8]  = "#5c5c71",  /* black   */
  [9]  = "#63627C",  /* red     */
  [10] = "#586C87", /* green   */
  [11] = "#6B6A84", /* yellow  */
  [12] = "#BC7592", /* blue    */
  [13] = "#7D84A0", /* magenta */
  [14] = "#D99C9B", /* cyan    */
  [15] = "#c3c3c6", /* white   */

  /* special colors */
  [256] = "#12111b", /* background */
  [257] = "#c3c3c6", /* foreground */
  [258] = "#c3c3c6",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
