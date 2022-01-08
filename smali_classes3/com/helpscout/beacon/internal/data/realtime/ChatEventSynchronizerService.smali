.class public final Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;",
        "",
        "",
        "start",
        "()V",
        "stop",
        "Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;",
        "messageCountChecker",
        "Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;",
        "Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;",
        "pusherService",
        "Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;",
        "<init>",
        "(Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;)V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final messageCountChecker:Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;

.field private final pusherService:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;)V
    .locals 1

    const-string v0, "messageCountChecker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pusherService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;->messageCountChecker:Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;->pusherService:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    return-void
.end method

.method public static final synthetic access$getPusherService$p(Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;)Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;->pusherService:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    return-object p0
.end method


# virtual methods
.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;->messageCountChecker:Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;

    new-instance v1, Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService$start$1;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService$start$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->start(Lkotlin/jvm/functions/Function0;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;->pusherService:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->connect()V

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;->pusherService:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->disconnect()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;->messageCountChecker:Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->stop()V

    return-void
.end method
