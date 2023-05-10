<script lang="ts">
	export let label = '';
	export let disabled = false;

	let props = { ...$$restProps };
</script>

<button {...props} class={['btn', props.class].join(' ')} {disabled} on:click>
	{label}
	<slot />
</button>
