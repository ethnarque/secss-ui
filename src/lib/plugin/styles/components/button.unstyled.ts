export const button: Record<string, Partial<CSSStyleDeclaration>> = {
	'.btn': {
		display: 'inline-flex',
		flexShrink: '0',
		flexWrap: 'wrap',
		alignItems: 'center',
		justifyContent: 'center',
		textAlign: 'center',
		userSelect: 'none',
		'&:hover': {
			background: 'red'
		}
	}
};
