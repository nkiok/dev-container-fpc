uses crt, StrUtils;

type
    RenderLine = record
        Content :string;
        Color :byte;
    end;

procedure WriteLine(s :string; color :byte);
begin
    TextColor(color);

    WriteLn(s);
end;

procedure DrawSmoke(frame :integer);
const
    smoke :RenderLine = (Content: '       . . . . o o o o o o'; Color: White);

var
    frameAnimation :string;    
begin
    frameAnimation := DupeString(' o', frame div 2);

    WriteLine(smoke.Content + frameAnimation, smoke.Color);
end;

procedure DrawTrain(frame :integer);
const 
    TrainRenderLines = 4;

    Train :array[1..TrainRenderLines] of RenderLine = (
    (Content: '                _____      o'; Color: White),
    (Content: '       ____====  ]OO|_n_n__][.'; Color: LightCyan),
    (Content: '      [________]_|__|________)< '; Color: LightBlue),
    (Content: '       oo    oo  oo OOOO-| oo\\_'; Color: Blue)
    );
    
    Rail :RenderLine = 
    (Content: '   +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+'; Color: Magenta);

var
    FrameAnimation :string;
    RenderLine :integer;
begin
    FrameAnimation := PadLeft('', frame);

    for RenderLine := 1 to TrainRenderLines do
        WriteLine(FrameAnimation + Train[RenderLine].Content, Train[RenderLine].Color);

    WriteLine(Rail.Content, Rail.Color);  
end;

procedure Animation;
const 
    MaxFrames = 40;
    FrameTime = 100;

var
    frame :integer;
begin 
    for frame := 0 to MaxFrames do
    begin
        ClrScr;   

        DrawSmoke(frame);

        DrawTrain(frame);

        Delay(FrameTime);
    end;
end;

begin
    Animation;

    NormVideo;
end.
