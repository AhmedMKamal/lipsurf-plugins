# Custom STT API
**v1.0.0**

*Last Updated May 21, 2020*

This API is used for overriding the built-in STT in LipSurf for an external one. It is only available in LipSurf Enterprise builds.

## Quick Start
```js
var i = i || 0;
top.postMessage({
		forLipSurf: true, 
		method: 'handleTranscript', 
		args: ["hello world", 0.99, true, i++, +new Date()],
}, '*');
```

## Methods
### `handleTranscript`
Sends STT generated transcript to LipSurf for processing and command execution.
```typescript
/**
  * 
  * @param transcript
  * @param confidence between 0 and 1, 1 being the highest level of confidence
  * @param isFinal set to true if there will not be any subsequent adjustments 
  *     to this transcript
  * @param resultIndex so we can identify if we're updating a previous 
  *     transcript (eg. with a higher confidence, or if we're adding newly said 
  *     things)
  * @param recgTime when the transcript was generated in milliseconds since 
  *     UNIX epoch
  */
handleTranscript(
		transcript: string,
		confidence: number,
		isFinal: boolean, 
		resultIndex: number,
		recgTime: number
	): void;
```

### `start`
Start listening.
### `pause`
Pauses LipSurf from listening, but does not turn it completely off (useful for keeping LipSurf generated UI on the screen).
### `shutdown`
Stops listening and all LipSurf generated UI removed.