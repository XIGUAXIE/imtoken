.class public final Lcom/helpscout/beacon/a/c/e/g/v/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/d/d/j/a;

.field private final b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;

.field private final c:Lcom/helpscout/beacon/a/c/b/a;

.field private final d:Lcom/helpscout/beacon/a/b/c/b/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/d/d/j/a;Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/b/c/b/a;)V
    .locals 1

    const-string v0, "chatNotificationDisplayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatActivityForegroundStatusMonitor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatDatastore"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/v/b;->a:Lcom/helpscout/beacon/a/d/d/j/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/v/b;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/v/b;->c:Lcom/helpscout/beacon/a/c/b/a;

    iput-object p4, p0, Lcom/helpscout/beacon/a/c/e/g/v/b;->d:Lcom/helpscout/beacon/a/b/c/b/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/a/d/d/b$a;)V
    .locals 4

    const-string v0, "chatEndedNotification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/d/b$a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/a/c/e/g/v/b;->d:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v1}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Ignoring ChatEnded push message for chat "

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Not for active chat"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/helpscout/beacon/a/c/e/g/v/b;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Chat is in foreground"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/v/b;->a:Lcom/helpscout/beacon/a/d/d/j/a;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/d/d/j/a;->a(Lcom/helpscout/beacon/a/d/d/b$a;)V

    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/v/b;->c:Lcom/helpscout/beacon/a/c/b/a;

    sget-object v0, Lcom/helpscout/beacon/a/c/b/a$b;->AGENT_END_CHAT:Lcom/helpscout/beacon/a/c/b/a$b;

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/c/b/a;->a(Lcom/helpscout/beacon/a/c/b/a$b;)V

    return-void
.end method
