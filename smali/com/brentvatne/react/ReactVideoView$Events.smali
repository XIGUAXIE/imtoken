.class public final enum Lcom/brentvatne/react/ReactVideoView$Events;
.super Ljava/lang/Enum;
.source "ReactVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brentvatne/react/ReactVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brentvatne/react/ReactVideoView$Events;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_END:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_ERROR:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_FULLSCREEN_DID_DISMISS:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_FULLSCREEN_DID_PRESENT:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_FULLSCREEN_WILL_DISMISS:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_FULLSCREEN_WILL_PRESENT:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_LOAD:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_LOAD_START:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_PROGRESS:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_READY_FOR_DISPLAY:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_RESUME:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_SEEK:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_STALLED:Lcom/brentvatne/react/ReactVideoView$Events;

.field public static final enum EVENT_TIMED_METADATA:Lcom/brentvatne/react/ReactVideoView$Events;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 57
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v1, 0x0

    const-string v2, "EVENT_LOAD_START"

    const-string/jumbo v3, "onVideoLoadStart"

    invoke-direct {v0, v2, v1, v3}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD_START:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 58
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v2, 0x1

    const-string v3, "EVENT_LOAD"

    const-string/jumbo v4, "onVideoLoad"

    invoke-direct {v0, v3, v2, v4}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 59
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v3, 0x2

    const-string v4, "EVENT_ERROR"

    const-string/jumbo v5, "onVideoError"

    invoke-direct {v0, v4, v3, v5}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_ERROR:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 60
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v4, 0x3

    const-string v5, "EVENT_PROGRESS"

    const-string/jumbo v6, "onVideoProgress"

    invoke-direct {v0, v5, v4, v6}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_PROGRESS:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 61
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v5, 0x4

    const-string v6, "EVENT_TIMED_METADATA"

    const-string/jumbo v7, "onTimedMetadata"

    invoke-direct {v0, v6, v5, v7}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_TIMED_METADATA:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 62
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v6, 0x5

    const-string v7, "EVENT_SEEK"

    const-string/jumbo v8, "onVideoSeek"

    invoke-direct {v0, v7, v6, v8}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_SEEK:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 63
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v7, 0x6

    const-string v8, "EVENT_END"

    const-string/jumbo v9, "onVideoEnd"

    invoke-direct {v0, v8, v7, v9}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_END:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 64
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/4 v8, 0x7

    const-string v9, "EVENT_STALLED"

    const-string/jumbo v10, "onPlaybackStalled"

    invoke-direct {v0, v9, v8, v10}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_STALLED:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 65
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v9, 0x8

    const-string v10, "EVENT_RESUME"

    const-string/jumbo v11, "onPlaybackResume"

    invoke-direct {v0, v10, v9, v11}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_RESUME:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 66
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v10, 0x9

    const-string v11, "EVENT_READY_FOR_DISPLAY"

    const-string/jumbo v12, "onReadyForDisplay"

    invoke-direct {v0, v11, v10, v12}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_READY_FOR_DISPLAY:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 67
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v11, 0xa

    const-string v12, "EVENT_FULLSCREEN_WILL_PRESENT"

    const-string/jumbo v13, "onVideoFullscreenPlayerWillPresent"

    invoke-direct {v0, v12, v11, v13}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_WILL_PRESENT:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 68
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v12, 0xb

    const-string v13, "EVENT_FULLSCREEN_DID_PRESENT"

    const-string/jumbo v14, "onVideoFullscreenPlayerDidPresent"

    invoke-direct {v0, v13, v12, v14}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_DID_PRESENT:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 69
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v13, 0xc

    const-string v14, "EVENT_FULLSCREEN_WILL_DISMISS"

    const-string/jumbo v15, "onVideoFullscreenPlayerWillDismiss"

    invoke-direct {v0, v14, v13, v15}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_WILL_DISMISS:Lcom/brentvatne/react/ReactVideoView$Events;

    .line 70
    new-instance v0, Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v14, 0xd

    const-string v15, "EVENT_FULLSCREEN_DID_DISMISS"

    const-string/jumbo v13, "onVideoFullscreenPlayerDidDismiss"

    invoke-direct {v0, v15, v14, v13}, Lcom/brentvatne/react/ReactVideoView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_DID_DISMISS:Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v13, 0xe

    new-array v13, v13, [Lcom/brentvatne/react/ReactVideoView$Events;

    .line 56
    sget-object v15, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD_START:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v15, v13, v1

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v13, v2

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_ERROR:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v13, v3

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_PROGRESS:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v13, v4

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_TIMED_METADATA:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v13, v5

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_SEEK:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v13, v6

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_END:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v13, v7

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_STALLED:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v13, v8

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_RESUME:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v13, v9

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_READY_FOR_DISPLAY:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v13, v10

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_WILL_PRESENT:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v13, v11

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_DID_PRESENT:Lcom/brentvatne/react/ReactVideoView$Events;

    aput-object v1, v13, v12

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_WILL_DISMISS:Lcom/brentvatne/react/ReactVideoView$Events;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    aput-object v0, v13, v14

    sput-object v13, Lcom/brentvatne/react/ReactVideoView$Events;->$VALUES:[Lcom/brentvatne/react/ReactVideoView$Events;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/brentvatne/react/ReactVideoView$Events;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brentvatne/react/ReactVideoView$Events;
    .locals 1

    .line 56
    const-class v0, Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brentvatne/react/ReactVideoView$Events;

    return-object p0
.end method

.method public static values()[Lcom/brentvatne/react/ReactVideoView$Events;
    .locals 1

    .line 56
    sget-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->$VALUES:[Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v0}, [Lcom/brentvatne/react/ReactVideoView$Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brentvatne/react/ReactVideoView$Events;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView$Events;->mName:Ljava/lang/String;

    return-object v0
.end method
