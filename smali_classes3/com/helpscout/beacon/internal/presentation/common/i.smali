.class public final Lcom/helpscout/beacon/internal/presentation/common/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/i$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/helpscout/beacon/internal/presentation/common/i$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/helpscout/beacon/internal/presentation/common/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/i$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/common/i;->c:Lcom/helpscout/beacon/internal/presentation/common/i$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/helpscout/beacon/internal/presentation/common/l;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/i;->b:Lcom/helpscout/beacon/internal/presentation/common/l;

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/common/i;)Lcom/helpscout/beacon/internal/presentation/common/l;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/common/i;->b:Lcom/helpscout/beacon/internal/presentation/common/l;

    return-object p0
.end method

.method public static synthetic a(Lcom/helpscout/beacon/internal/presentation/common/i;Ljava/io/File;ILjava/lang/Object;)Ljava/io/File;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/i;->b()Ljava/io/File;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/i;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/helpscout/beacon/internal/presentation/common/i;Ljava/io/File;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/i;->b()Ljava/io/File;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/i;->a(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final b()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "context.filesDir"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)La/a/a/a/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "documentUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/AttachmentExtensionsKt;->isContentScheme(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/i;->a:Landroid/content/Context;

    invoke-static {v0, p1}, La/a/a/a/a/a;->a(Landroid/content/Context;Landroid/net/Uri;)La/a/a/a/a/a;

    move-result-object p1

    const-string v0, "DocumentFileCompat.fromS\u2026Uri(context, documentUri)"

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a/a/a/a;->b(Ljava/io/File;)La/a/a/a/a/a;

    move-result-object p1

    const-string v0, "DocumentFileCompat.fromFile(File(path))"

    goto :goto_0

    :goto_1
    return-object p1

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "context.cacheDir"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/io/File;)Ljava/io/File;
    .locals 2

    const-string v0, "parentFolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "beacon/"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v0
.end method

.method public final a(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
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

    instance-of v0, p2, Lcom/helpscout/beacon/internal/presentation/common/i$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/i$c;

    iget v1, v0, Lcom/helpscout/beacon/internal/presentation/common/i$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/presentation/common/i$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/i$c;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/i$c;-><init>(Lcom/helpscout/beacon/internal/presentation/common/i;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/internal/presentation/common/i$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/presentation/common/i$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/common/i$d;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/helpscout/beacon/internal/presentation/common/i$d;-><init>(Lcom/helpscout/beacon/internal/presentation/common/i;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/helpscout/beacon/internal/presentation/common/i$c;->b:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Landroid/net/Uri;

    if-eqz p2, :cond_4

    return-object p2

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Exception copying content to file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/i$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/helpscout/beacon/internal/presentation/common/i$b;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
