.class public final Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\r\u001a\u00020\t8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\n\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "Lcom/helpscout/beacon/a/d/d/h/e/a;",
        "a",
        "Lkotlin/Lazy;",
        "()Lcom/helpscout/beacon/a/d/d/h/e/a;",
        "replyHandler",
        "<init>",
        "()V",
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
.field private final a:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver$a;->a:Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver$a;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver;->a:Lkotlin/Lazy;

    return-void
.end method

.method private final a()Lcom/helpscout/beacon/a/d/d/h/e/a;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/a/d/d/h/e/a;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver;->a()Lcom/helpscout/beacon/a/d/d/h/e/a;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/a/d/d/h/e/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver;->a()Lcom/helpscout/beacon/a/d/d/h/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/helpscout/beacon/a/d/d/h/e/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
