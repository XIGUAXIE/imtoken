.class final Lcom/helpscout/beacon/internal/presentation/common/i$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/i;->a(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroid/net/Uri;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.presentation.common.FileSystem$makeLocalCopy$2"
    f = "FileSystem.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/common/i;

.field final synthetic c:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/i;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/i$d;->b:Lcom/helpscout/beacon/internal/presentation/common/i;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/i$d;->c:Landroid/net/Uri;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/common/i$d;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/i$d;->b:Lcom/helpscout/beacon/internal/presentation/common/i;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/i$d;->c:Landroid/net/Uri;

    invoke-direct {p1, v0, v1, p2}, Lcom/helpscout/beacon/internal/presentation/common/i$d;-><init>(Lcom/helpscout/beacon/internal/presentation/common/i;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/i$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/i$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/i$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/i$d;->a:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/i$d;->b:Lcom/helpscout/beacon/internal/presentation/common/i;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/common/i;->a(Lcom/helpscout/beacon/internal/presentation/common/i;)Lcom/helpscout/beacon/internal/presentation/common/l;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/i$d;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/l;->a(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/i$d;->b:Lcom/helpscout/beacon/internal/presentation/common/i;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/i$d;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/i;->a(Landroid/net/Uri;)La/a/a/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, La/a/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/AttachmentExtensionsKt;->extension(La/a/a/a/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/common/i$d;->b:Lcom/helpscout/beacon/internal/presentation/common/i;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v1}, Lcom/helpscout/beacon/internal/presentation/common/i;->a(Lcom/helpscout/beacon/internal/presentation/common/i;Ljava/io/File;ILjava/lang/Object;)Ljava/io/File;

    move-result-object v1

    const-string v2, "hs_"

    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/a/a/a;->a(Ljava/io/File;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Exception copying content to file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
