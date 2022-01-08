.class public Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

.field private final c:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

.field private final d:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

.field private final e:Z

.field private final f:Z

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZ)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "author"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->b:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->c:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->d:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    iput-boolean p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->e:Z

    iput-boolean p6, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->f:Z

    iput-boolean p7, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move v7, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    move/from16 v8, p6

    :goto_1
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    move/from16 v9, p7

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v9}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZ)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->d:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    return-object v0
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->c:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->c:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->d:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->b()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->d:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->g:Z

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->g:Z

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->c:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    return-object v0
.end method

.method public final d()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->b:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->b:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->isTypingMessage:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->g:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->f:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->e:Z

    return v0
.end method
