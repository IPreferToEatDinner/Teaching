export default {
	title: 'C++从菜鸟到入门',
	titleTemplate: '凉开水水水的网站',
	description:
		'《C++从菜鸟到入门》借助详细的文档、贴心的提示和一站式的线性教程帮助你走过学习最开始的一段路程，同时坚持免费互助的原则，此文档在github上开源，以期共同合作',
	lang: 'zh-Hans-CN',

	lastUpdated: true,
	lastUpdatedText: '最近更新时间',

	//搜索引擎标识头
	head: [
		['meta', { name: 'msvalidate.01', content: 'C246CD2DBA296401E59B4D6C4A608161' }],
		['meta', { name: 'baidu-site-verification', content: 'code-ZoEDd8If6G' }],
		[
			'meta',
			{ name: 'google-site-verification', content: 'KCkUS2xxN68tizQOlPyQvim2Ea7HUyjiveK6_iT7kUI' },
		],
	],

	themeConfig: {
		siteTitle: 'C++从菜鸟到入门',

		sidebar: [
			{
				text: '在开始之前',
				collapsible: true,
				items: [
					{ text: '关于文档', link: '/content/关于文档.md' },
					{ text: '环境配置', link: '/content/环境配置.md' },
				],
			},
			{
				text: '基础知识',
				collapsible: true,
				items: [{ text: '数据类型', link: '/content/数据类型.md' }],
			},
		],
	},
};
