.class Lcom/facebook/react/views/textinput/ReactTextInputSubmitEditingEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ReactTextInputSubmitEditingEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/textinput/ReactTextInputSubmitEditingEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "topSubmitEditing"


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 25
    iput-object p2, p0, Lcom/facebook/react/views/textinput/ReactTextInputSubmitEditingEvent;->mText:Ljava/lang/String;

    return-void
.end method

.method private serializeEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 44
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputSubmitEditingEvent;->getViewTag()I

    move-result v1

    const-string/jumbo v2, "target"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 46
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputSubmitEditingEvent;->mText:Ljava/lang/String;

    const-string/jumbo v2, "text"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputSubmitEditingEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputSubmitEditingEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactTextInputSubmitEditingEvent;->serializeEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "topSubmitEditing"

    return-object v0
.end method
