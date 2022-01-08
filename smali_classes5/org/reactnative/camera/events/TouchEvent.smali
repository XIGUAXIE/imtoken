.class public Lorg/reactnative/camera/events/TouchEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "TouchEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lorg/reactnative/camera/events/TouchEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Lorg/reactnative/camera/events/TouchEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsDoubleTap:Z

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lorg/reactnative/camera/events/TouchEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/Event;-><init>()V

    return-void
.end method

.method private init(IZII)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/events/Event;->init(I)V

    .line 35
    iput p3, p0, Lorg/reactnative/camera/events/TouchEvent;->mX:I

    .line 36
    iput p4, p0, Lorg/reactnative/camera/events/TouchEvent;->mY:I

    .line 37
    iput-boolean p2, p0, Lorg/reactnative/camera/events/TouchEvent;->mIsDoubleTap:Z

    return-void
.end method

.method public static obtain(IZII)Lorg/reactnative/camera/events/TouchEvent;
    .locals 1

    .line 25
    sget-object v0, Lorg/reactnative/camera/events/TouchEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactnative/camera/events/TouchEvent;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lorg/reactnative/camera/events/TouchEvent;

    invoke-direct {v0}, Lorg/reactnative/camera/events/TouchEvent;-><init>()V

    .line 29
    :cond_0
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/reactnative/camera/events/TouchEvent;->init(IZII)V

    return-object v0
.end method

.method private serializeEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 57
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lorg/reactnative/camera/events/TouchEvent;->getViewTag()I

    move-result v1

    const-string v2, "target"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 61
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 62
    iget v2, p0, Lorg/reactnative/camera/events/TouchEvent;->mX:I

    const-string v3, "x"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 63
    iget v2, p0, Lorg/reactnative/camera/events/TouchEvent;->mY:I

    const-string v3, "y"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 65
    iget-boolean v2, p0, Lorg/reactnative/camera/events/TouchEvent;->mIsDoubleTap:Z

    const-string v3, "isDoubleTap"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "touchOrigin"

    .line 66
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lorg/reactnative/camera/events/TouchEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lorg/reactnative/camera/events/TouchEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/reactnative/camera/events/TouchEvent;->serializeEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_TOUCH:Lorg/reactnative/camera/CameraViewManager$Events;

    invoke-virtual {v0}, Lorg/reactnative/camera/CameraViewManager$Events;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
