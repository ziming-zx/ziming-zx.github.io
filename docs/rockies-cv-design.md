# Banff / Canadian Rockies CV

简历页以加拿大落基山为视觉灵感：原创山湖封面、深松绿色、冰川湖色、米白纸面，
Playfair Display 标题和 DM Sans 正文。保持原有 YAML 简历资料及章节开关。
字体服务不可用时回退至 Georgia / 系统无衬线字体。

## 文件

- 布局：`zx-resume/_layouts/resume.html`
- 页面 head：`zx-resume/_includes/head.html`
- 样式：`zx-resume/css/rockies.css`（普通 CSS，不额外依赖 Sass）
- 导航高亮与打印按钮：`zx-resume/assets/rockies.js`
- 封面：`zx-resume/images/banff-rockies.webp`，2172 × 724，约 307 KiB

桌面采用个人资料侧栏和正文双栏，760px 以下改为单栏；
目录原生 details 可折叠，JavaScript 关闭时锚点和全文仍可使用。
打印样式隐藏风景和导航，将内容变为白底 A4 简历。
按钮调用浏览器打印，可选择保存 PDF。

## 图片来源

通过内置 ImageGen 工具原创生成，PNG 转为 WebP 后纳入仓库。
这是受 Banff 风景启发的生成图，不是经地点核实的实景摄影，页内标注为 Inspired by。
最终生成提示词：

> Use case: photorealistic-natural. Asset type: panoramic background photograph for a sophisticated academic online CV, landscape 3:1 wide. Primary request: Canadian Rockies and Banff inspired landscape, dramatic rugged limestone snow-capped mountain peaks, an intensely turquoise glacial lake, dark evergreen pine forest along the shoreline, a quiet late-summer dawn. Style: refined editorial landscape photography, realistic geological detail, subtle analogue film grain, desaturated slate blue mountains and deep forest greens, luminous icy turquoise water, soft natural light with pale warm highlights. Composition: very wide cinematic panorama, mountain range filling upper two thirds, pine trees and lake shore in foreground, lake sweeping across lower third; left half has atmospheric softer darker mountain slopes suitable for white text overlay. No people, no buildings, no roads, no letters or typography, no logos, no watermark. This is an atmospheric artistic landscape inspired by Banff, not a location-verified documentary photo.

## 本地验证

本机缺少 Ruby，使用 LiquidJS 直接渲染真实 Liquid 模板和 YAML 数据供浏览器预览，
未将该预览工具或依赖加入正式项目构建。正式发布仍使用根目录的 Jekyll 构建流程。
完整 Jekyll 构建及线上部署尚未执行。

本次已完成的检查：

- 初版真实模板及 YAML 数据成功渲染；当时的 19 条可见记录所有字段均保留。
- 所有可选章节开关启用后也可成功渲染。
- 所有页内锚点有效，HTML id 无重复，CSS、JS 和图片均返回 HTTP 200。
- 浏览器查看桌面及手机宽度；1440px 桌面和手机测试框内均无横向溢出。
- 通过实际页面点击 Education，锚点跳转及目录 aria-current 高亮正确。
- 通过将打印媒体样式应用到预览检查白底排版；未实际输出分页 PDF。
- JavaScript 语法检查、Git 空白检查通过。

为方便本机查看，还生成了仓库外的独立 HTML 预览，内嵌图片、CSS 和 JavaScript，
不加入正式网站源文件，避免重复维护。它依赖源文件生成，不作为后续内容编辑入口。
