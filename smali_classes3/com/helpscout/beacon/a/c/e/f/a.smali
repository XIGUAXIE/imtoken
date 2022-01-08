.class public final Lcom/helpscout/beacon/a/c/e/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/a/c/e/f/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/data/remote/a;

.field private final b:Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;

.field private final c:Lcom/helpscout/beacon/a/b/c/b/c;

.field private final d:Lcom/helpscout/beacon/internal/presentation/common/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/a;Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/internal/presentation/common/a;)V
    .locals 1

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentDao"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatEventRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/f/a;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/f/a;->b:Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/f/a;->c:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p4, p0, Lcom/helpscout/beacon/a/c/e/f/a;->d:Lcom/helpscout/beacon/internal/presentation/common/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/f/a$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/f/a$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/f/a$d;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/f/a$d;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/f/a$d;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/f/a$d;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/f/a$d;-><init>(Lcom/helpscout/beacon/a/c/e/f/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p2, v6, Lcom/helpscout/beacon/a/c/e/f/a$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, v6, Lcom/helpscout/beacon/a/c/e/f/a$d;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->m()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/helpscout/beacon/a/c/e/f/a$a$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->m()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/a/c/e/f/a$a$b;-><init>(Landroid/net/Uri;)V

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->l()Ljava/lang/String;

    move-result-object v5

    iput v2, v6, Lcom/helpscout/beacon/a/c/e/f/a$d;->b:I

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/helpscout/beacon/a/c/e/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p2, Landroid/net/Uri;

    new-instance p1, Lcom/helpscout/beacon/a/c/e/f/a$a$b;

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/a/c/e/f/a$a$b;-><init>(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p2, p1

    goto :goto_2

    :catchall_0
    sget-object p2, Lcom/helpscout/beacon/a/c/e/f/a$a$a;->a:Lcom/helpscout/beacon/a/c/e/f/a$a$a;

    :goto_2
    return-object p2
.end method

.method final synthetic a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/f/a;->b:Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;->Finished:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    invoke-interface {v0, p1, p2, v1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;->updateLocalUri(Ljava/lang/String;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/f/a;->c:Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-virtual {p1, p3, p4}, Lcom/helpscout/beacon/a/b/c/b/c;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/f/a;->b:Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;

    invoke-interface {v0, p1, p2}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;->updateStatus(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/f/a;->c:Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-virtual {p1, p3, p4}, Lcom/helpscout/beacon/a/b/c/b/c;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p5, Lcom/helpscout/beacon/a/c/e/f/a$c;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/helpscout/beacon/a/c/e/f/a$c;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/f/a$c;

    invoke-direct {v0, p0, p5}, Lcom/helpscout/beacon/a/c/e/f/a$c;-><init>(Lcom/helpscout/beacon/a/c/e/f/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->b:I

    const-string v3, "localUri"

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->d:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->f:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->e:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p3, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->d:Ljava/lang/Object;

    check-cast p3, Lcom/helpscout/beacon/a/c/e/f/a;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->h:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Ljava/lang/String;

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->g:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->f:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/f/a;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p5, p4

    move-object p4, p3

    move-object p3, v2

    goto :goto_1

    :cond_5
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p5, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;->Downloading:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->e:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->f:Ljava/lang/Object;

    iput-object p3, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->g:Ljava/lang/Object;

    iput-object p4, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->h:Ljava/lang/Object;

    iput v7, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->b:I

    invoke-virtual {p0, p1, p5, p4, v0}, Lcom/helpscout/beacon/a/c/e/f/a;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_6

    return-object v1

    :cond_6
    move-object p5, p4

    move-object p4, p3

    move-object p3, p0

    :goto_1
    iput-object p3, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->e:Ljava/lang/Object;

    iput-object p5, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->f:Ljava/lang/Object;

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->g:Ljava/lang/Object;

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->h:Ljava/lang/Object;

    iput v6, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->b:I

    invoke-virtual {p3, p4, p2, v0}, Lcom/helpscout/beacon/a/c/e/f/a;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v9, p2

    move-object p2, p1

    move-object p1, p5

    move-object p5, v9

    :goto_2
    check-cast p5, Ljava/io/File;

    if-eqz p5, :cond_9

    invoke-static {p5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p4

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->d:Ljava/lang/Object;

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->e:Ljava/lang/Object;

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->f:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->b:I

    invoke-virtual {p3, p2, p4, p1, v0}, Lcom/helpscout/beacon/a/c/e/f/a;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object p1, p4

    :goto_3
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_9
    sget-object p4, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;->Failed:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->d:Ljava/lang/Object;

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->e:Ljava/lang/Object;

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->f:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/f/a$c;->b:I

    invoke-virtual {p3, p2, p4, p1, v0}, Lcom/helpscout/beacon/a/c/e/f/a;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_4
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method final synthetic a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/c/e/f/a$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/c/e/f/a$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/f/a$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/f/a$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/f/a$b;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/c/e/f/a$b;-><init>(Lcom/helpscout/beacon/a/c/e/f/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/a/c/e/f/a$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/f/a$b;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/f/a$b;->e:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/f/a$b;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/f/a;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/helpscout/beacon/a/c/e/f/a;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/f/a$b;->d:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/f/a$b;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/f/a$b;->b:I

    invoke-interface {p3, p1, v0}, Lcom/helpscout/beacon/internal/data/remote/a;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p3, Lokhttp3/ResponseBody;

    iget-object p1, p1, Lcom/helpscout/beacon/a/c/e/f/a;->d:Lcom/helpscout/beacon/internal/presentation/common/a;

    invoke-virtual {p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/a;->a(Ljava/lang/String;Lokhttp3/ResponseBody;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
