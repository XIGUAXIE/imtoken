.class public final Lcom/helpscout/beacon/a/c/e/g/v/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/d/d/j/a;

.field private final b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;

.field private final c:Lcom/helpscout/beacon/a/b/c/b/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/d/d/j/a;Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;Lcom/helpscout/beacon/a/b/c/b/a;)V
    .locals 1

    const-string v0, "chatNotificationDisplayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatActivityForegroundStatusMonitor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatDatastore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/v/c;->a:Lcom/helpscout/beacon/a/d/d/j/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/v/c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/v/c;->c:Lcom/helpscout/beacon/a/b/c/b/a;

    return-void
.end method

.method private final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/v/c;->c:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v0}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/v/c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;->b()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/a/d/d/b$b;)V
    .locals 2

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/d/b$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/c/e/g/v/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/v/c;->a:Lcom/helpscout/beacon/a/d/d/j/a;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/d/d/j/a;->a(Lcom/helpscout/beacon/a/d/d/b$b;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring ChatInactivity push message for chat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/d/b$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is in foreground or for different chat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
