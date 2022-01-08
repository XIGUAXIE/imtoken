.class public final Lcom/helpscout/beacon/a/c/e/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/data/remote/a;

.field private final b:Lcom/helpscout/beacon/internal/presentation/common/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/a;Lcom/helpscout/beacon/internal/presentation/common/a;)V
    .locals 1

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/f/b;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/f/b;->b:Lcom/helpscout/beacon/internal/presentation/common/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/c/e/f/b$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/c/e/f/b$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/f/b$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/f/b$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/f/b$a;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/c/e/f/b$a;-><init>(Lcom/helpscout/beacon/a/c/e/f/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/a/c/e/f/b$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/f/b$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/f/b$a;->e:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/f/b$a;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/f/b;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/helpscout/beacon/a/c/e/f/b;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/f/b$a;->d:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/f/b$a;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/f/b$a;->b:I

    invoke-interface {p3, p1, v2, v0}, Lcom/helpscout/beacon/internal/data/remote/a;->b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p3, Lokhttp3/ResponseBody;

    iget-object p1, p1, Lcom/helpscout/beacon/a/c/e/f/b;->b:Lcom/helpscout/beacon/internal/presentation/common/a;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;->getFilename()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/a;->a(Ljava/lang/String;Lokhttp3/ResponseBody;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
