.class public final Lcom/helpscout/beacon/internal/presentation/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/presentation/common/i;

.field private final b:Lcom/helpscout/beacon/internal/presentation/common/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/i;Lcom/helpscout/beacon/internal/presentation/common/d;)V
    .locals 1

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/a;->a:Lcom/helpscout/beacon/internal/presentation/common/i;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/a;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    return-void
.end method

.method public static synthetic a(Lcom/helpscout/beacon/internal/presentation/common/a;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lokhttp3/MultipartBody$Part;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "attachments[]"

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/a;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 1

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method private final a(La/a/a/a/a/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, La/a/a/a/a/a;->e()J

    move-result-wide v0

    const-wide/32 v2, 0x989680

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/AttachmentExtensionsKt;->isValidExtension(La/a/a/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/InvalidExtension;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/a;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/AttachmentExtensionsKt;->extension(La/a/a/a/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/helpscout/beacon/internal/domain/model/InvalidExtension;-><init>(Ljava/lang/String;La/a/a/a/a/a;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/FileTooLarge;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/a;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/helpscout/beacon/internal/domain/model/FileTooLarge;-><init>(Ljava/lang/String;La/a/a/a/a/a;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Lcom/helpscout/beacon/internal/domain/model/NetworkException;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/a;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/helpscout/beacon/internal/domain/model/NetworkException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lokhttp3/ResponseBody;)Ljava/io/File;
    .locals 13

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/a;->a:Lcom/helpscout/beacon/internal/presentation/common/i;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/i;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/i;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "."

    const/4 v4, 0x0

    invoke-static {p1, v3, v4, v2, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v4

    const-string p1, ""

    aput-object p1, v2, v6

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p2

    const-string v0, "downloadedFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4, v6, v1}, Lokio/Okio;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    move-result-object v1

    const/16 v2, 0x2000

    :cond_1
    int-to-long v3, v2

    invoke-interface {p2, v1, v3, v4}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v3

    invoke-interface {v0}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    const/4 v5, -0x1

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    invoke-interface {p2}, Lokio/BufferedSource;->close()V

    return-object p1
.end method

.method public final a(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/internal/presentation/common/a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/a$a;

    iget v1, v0, Lcom/helpscout/beacon/internal/presentation/common/a$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/presentation/common/a$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/a$a;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/a$a;-><init>(Lcom/helpscout/beacon/internal/presentation/common/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/internal/presentation/common/a$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/presentation/common/a$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/internal/presentation/common/a$a;->e:Ljava/lang/Object;

    check-cast p1, La/a/a/a/a/a;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/common/a$a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/a;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/a;->a:Lcom/helpscout/beacon/internal/presentation/common/i;

    invoke-virtual {p2, p1}, Lcom/helpscout/beacon/internal/presentation/common/i;->a(Landroid/net/Uri;)La/a/a/a/a/a;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/a;->a(La/a/a/a/a/a;)V

    :try_start_1
    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/common/a;->a:Lcom/helpscout/beacon/internal/presentation/common/i;

    iput-object p0, v0, Lcom/helpscout/beacon/internal/presentation/common/a$a;->d:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/internal/presentation/common/a$a;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/internal/presentation/common/a$a;->b:I

    invoke-virtual {v2, p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/i;->a(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_1
    :try_start_2
    check-cast p2, Landroid/net/Uri;

    new-instance v1, Lcom/helpscout/beacon/a/d/e/a/d;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "localCopyUri.toString()"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p2, p1}, Lcom/helpscout/beacon/a/d/e/a/d;-><init>(Ljava/lang/String;La/a/a/a/a/a;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_0
    move-object v0, p0

    :catch_1
    new-instance p1, Lcom/helpscout/beacon/internal/domain/model/NetworkException;

    iget-object p2, v0, Lcom/helpscout/beacon/internal/presentation/common/a;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/common/d;->g()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/internal/domain/model/NetworkException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/a;->a:Lcom/helpscout/beacon/internal/presentation/common/i;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2, v1}, Lcom/helpscout/beacon/internal/presentation/common/i;->a(Lcom/helpscout/beacon/internal/presentation/common/i;Ljava/io/File;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "fileUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formDataName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/a;->a:Lcom/helpscout/beacon/internal/presentation/common/i;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/i;->a(Landroid/net/Uri;)La/a/a/a/a/a;

    move-result-object v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/AttachmentExtensionsKt;->nameWithExtension(La/a/a/a/a/a;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, La/a/a/a/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, La/a/a/a/a/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doc.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    const-string p2, "MultipartBody.Part.creat\u2026eNameInForm, requestBody)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not read attachment "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
