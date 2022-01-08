.class public final Lcom/helpscout/beacon/internal/data/remote/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/internal/data/remote/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/data/remote/c$d;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field public static final i:Lcom/helpscout/beacon/internal/data/remote/c$d;


# instance fields
.field private final a:Lcom/helpscout/beacon/BeaconDatastore;

.field private final b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

.field private final c:Lcom/helpscout/beacon/a/b/c/c/a;

.field private final d:Lcom/helpscout/beacon/internal/presentation/common/a;

.field private final e:Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/data/remote/c$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/data/remote/c;->i:Lcom/helpscout/beacon/internal/data/remote/c$d;

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/c$c;->a:Lcom/helpscout/beacon/internal/data/remote/c$c;

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/data/remote/c$d;->a(Lcom/helpscout/beacon/internal/data/remote/c$d;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/helpscout/beacon/internal/data/remote/c;->f:Ljava/lang/String;

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/c$a;->a:Lcom/helpscout/beacon/internal/data/remote/c$a;

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/data/remote/c$d;->a(Lcom/helpscout/beacon/internal/data/remote/c$d;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/helpscout/beacon/internal/data/remote/c;->g:Ljava/lang/String;

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/c$b;->a:Lcom/helpscout/beacon/internal/data/remote/c$b;

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/data/remote/c$d;->a(Lcom/helpscout/beacon/internal/data/remote/c$d;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/data/remote/c;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;Lcom/helpscout/beacon/a/b/c/c/a;Lcom/helpscout/beacon/internal/presentation/common/a;Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;)V
    .locals 1

    const-string v0, "datastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiApiService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cookiePersister"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "articlesSuggestionConverter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/data/remote/c;->c:Lcom/helpscout/beacon/a/b/c/c/a;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/data/remote/c;->d:Lcom/helpscout/beacon/internal/presentation/common/a;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/data/remote/c;->e:Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getEmail()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v1}, Lcom/helpscout/beacon/BeaconDatastore;->getSignature()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v2}, Lcom/helpscout/beacon/BeaconDatastore;->getAuthType()Lcom/helpscout/beacon/internal/core/model/BeaconAuthType;

    move-result-object v2

    sget-object v3, Lcom/helpscout/beacon/internal/core/model/BeaconAuthType;->basic:Lcom/helpscout/beacon/internal/core/model/BeaconAuthType;

    const-string v4, "Beacon Email="

    if-eq v2, v3, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",Signature="

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v1}, Lcom/helpscout/beacon/BeaconDatastore;->getInstallId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",DeviceId="

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lretrofit2/Response;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lretrofit2/HttpException;

    invoke-direct {v0, p1}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    throw v0
.end method


# virtual methods
.method public a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v2}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->conversations(Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/helpscout/beacon/a/d/e/a/d;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/internal/data/remote/c$t;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c$t;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$t;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$t;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$t;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/internal/data/remote/c$t;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/internal/data/remote/c$t;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/c$t;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/c$t;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/c;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/c;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->d:Lcom/helpscout/beacon/internal/presentation/common/a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/d;->d()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "attachment.getOriginalUriAsUri()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v5, "file"

    invoke-virtual {v2, v4, p1, v5}, Lcom/helpscout/beacon/internal/presentation/common/a;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v4}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v4

    iput-object p0, v0, Lcom/helpscout/beacon/internal/data/remote/c$t;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/c$t;->b:I

    invoke-interface {v2, p2, v4, p1, v0}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->uploadAttachment(Ljava/lang/String;Ljava/lang/String;Lokhttp3/MultipartBody$Part;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lretrofit2/Response;

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    const-string v0, "Resource-Id"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, p2}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    throw p1

    :cond_5
    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, p2}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    throw p1
.end method

.method public a(Lcom/helpscout/beacon/a/d/e/a/e;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/a/d/e/a/e;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Lcom/helpscout/beacon/internal/data/remote/c$f;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/helpscout/beacon/internal/data/remote/c$f;

    iget v3, v2, Lcom/helpscout/beacon/internal/data/remote/c$f;->b:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/helpscout/beacon/internal/data/remote/c$f;->b:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/helpscout/beacon/internal/data/remote/c$f;

    invoke-direct {v2, p0, v1}, Lcom/helpscout/beacon/internal/data/remote/c$f;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/helpscout/beacon/internal/data/remote/c$f;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/helpscout/beacon/internal/data/remote/c$f;->b:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object v1, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;->Companion:Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Companion;

    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Companion;->convertTimelineEventListForApi(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    new-instance v1, Lcom/helpscout/beacon/internal/domain/model/ConversationBody;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/e;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/e;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/e;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/e;->a()Ljava/util/List;

    move-result-object v11

    move-object v6, v1

    move-object/from16 v10, p2

    move-object/from16 v13, p4

    invoke-direct/range {v6 .. v13}, Lcom/helpscout/beacon/internal/domain/model/ConversationBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/c;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    iget-object v7, v0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v7}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v7

    iput v5, v2, Lcom/helpscout/beacon/internal/data/remote/c$f;->b:I

    invoke-interface {v6, v4, v7, v1, v2}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->createConversation(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ConversationBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v1, Lretrofit2/Response;

    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    const-string v3, "Resource-ID"

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    new-instance v2, Lretrofit2/HttpException;

    invoke-direct {v2, v1}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    throw v2
.end method

.method public a(Lcom/helpscout/beacon/model/BeaconUser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/model/BeaconUser;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/internal/data/remote/c$n;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c$n;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$n;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$n;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$n;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/internal/data/remote/c$n;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/internal/data/remote/c$n;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/c$n;->b:I

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

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/c;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/helpscout/beacon/internal/domain/model/CustomerBody;

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/BeaconUser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/BeaconUser;->getCompany()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/BeaconUser;->getJobTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/BeaconUser;->getAvatar()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/BeaconUser;->getAttributes()Ljava/util/Map;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/helpscout/beacon/internal/domain/model/CustomerBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v4}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v4

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/c$n;->b:I

    invoke-interface {p1, p2, v4, v2, v0}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->identifyCustomer(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/CustomerBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;->getStatus()Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/core/model/ArticleSearchResponseApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/internal/data/remote/c$q;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c$q;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$q;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$q;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$q;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/internal/data/remote/c$q;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/internal/data/remote/c$q;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/c$q;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/c$q;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/c;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v2}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2, p1, p2}, Lcom/helpscout/beacon/internal/core/api/BeaconApiService;->search(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object p1

    iput-object p0, v0, Lcom/helpscout/beacon/internal/data/remote/c$q;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/c$q;->b:I

    invoke-static {p1, v0}, Lru/gildor/coroutines/retrofit/CallAwaitKt;->awaitResult(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p3, Lru/gildor/coroutines/retrofit/Result;

    instance-of p2, p3, Lru/gildor/coroutines/retrofit/Result$Ok;

    if-eqz p2, :cond_4

    iget-object p1, p1, Lcom/helpscout/beacon/internal/data/remote/c;->c:Lcom/helpscout/beacon/a/b/c/c/a;

    check-cast p3, Lru/gildor/coroutines/retrofit/Result$Ok;

    invoke-virtual {p3}, Lru/gildor/coroutines/retrofit/Result$Ok;->getResponse()Lokhttp3/Response;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/a/b/c/c/a;->a(Lokhttp3/Response;)V

    invoke-virtual {p3}, Lru/gildor/coroutines/retrofit/Result$Ok;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/core/model/ArticleSearchResponseApi;

    return-object p1

    :cond_4
    instance-of p1, p3, Lru/gildor/coroutines/retrofit/Result$Error;

    if-nez p1, :cond_6

    instance-of p1, p3, Lru/gildor/coroutines/retrofit/Result$Exception;

    if-eqz p1, :cond_5

    check-cast p3, Lru/gildor/coroutines/retrofit/Result$Exception;

    invoke-virtual {p3}, Lru/gildor/coroutines/retrofit/Result$Exception;->getException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_6
    check-cast p3, Lru/gildor/coroutines/retrofit/Result$Error;

    invoke-virtual {p3}, Lru/gildor/coroutines/retrofit/Result$Error;->getException()Lretrofit2/HttpException;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ArticleFeedbackBodyApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/domain/model/ArticleFeedbackBodyApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/internal/data/remote/c$e;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c$e;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$e;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$e;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$e;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/internal/data/remote/c$e;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p3, v6, Lcom/helpscout/beacon/internal/data/remote/c$e;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, v6, Lcom/helpscout/beacon/internal/data/remote/c$e;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    iget-object p3, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p3}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object p3

    iget-object v3, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v3}, Lcom/helpscout/beacon/BeaconDatastore;->getInstallId()Ljava/lang/String;

    move-result-object v4

    iput v2, v6, Lcom/helpscout/beacon/internal/data/remote/c$e;->b:I

    move-object v2, p3

    move-object v3, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->articleFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ArticleFeedbackBodyApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p3, Lretrofit2/Response;

    invoke-virtual {p3}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_4
    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, p3}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/helpscout/beacon/internal/data/remote/c$r;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c$r;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$r;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$r;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$r;

    invoke-direct {v0, p0, p4}, Lcom/helpscout/beacon/internal/data/remote/c$r;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p4, v6, Lcom/helpscout/beacon/internal/data/remote/c$r;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, v6, Lcom/helpscout/beacon/internal/data/remote/c$r;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/c;->a()Ljava/lang/String;

    move-result-object p4

    new-instance v5, Lcom/helpscout/beacon/internal/domain/model/ConversationReplyBody;

    invoke-direct {v5, p2, p3}, Lcom/helpscout/beacon/internal/domain/model/ConversationReplyBody;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p2}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v3

    iput v2, v6, Lcom/helpscout/beacon/internal/data/remote/c$r;->b:I

    move-object v2, p4

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ConversationReplyBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p4, Lretrofit2/Response;

    invoke-virtual {p4}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_4
    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, p4}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/internal/data/remote/c$o;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c$o;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$o;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$o;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$o;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/internal/data/remote/c$o;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p3, v6, Lcom/helpscout/beacon/internal/data/remote/c$o;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, v6, Lcom/helpscout/beacon/internal/data/remote/c$o;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/c;->a()Ljava/lang/String;

    move-result-object p3

    iget-object v3, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v3}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v3

    iput v2, v6, Lcom/helpscout/beacon/internal/data/remote/c$o;->b:I

    move-object v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->markConversationThreadAsRead(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p3, Lretrofit2/Response;

    invoke-virtual {p3}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_4
    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, p3}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/internal/data/remote/c$i;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c$i;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$i;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$i;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$i;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/internal/data/remote/c$i;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/internal/data/remote/c$i;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/c$i;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/c$i;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/c;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v2}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v4}, Lcom/helpscout/beacon/BeaconDatastore;->getInstallId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, p1, v4}, Lcom/helpscout/beacon/internal/core/api/BeaconApiService;->article(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    iput-object p0, v0, Lcom/helpscout/beacon/internal/data/remote/c$i;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/c$i;->b:I

    invoke-static {p1, v0}, Lru/gildor/coroutines/retrofit/CallAwaitKt;->awaitResult(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Lru/gildor/coroutines/retrofit/Result;

    instance-of v0, p2, Lru/gildor/coroutines/retrofit/Result$Ok;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/helpscout/beacon/internal/data/remote/c;->c:Lcom/helpscout/beacon/a/b/c/c/a;

    check-cast p2, Lru/gildor/coroutines/retrofit/Result$Ok;

    invoke-virtual {p2}, Lru/gildor/coroutines/retrofit/Result$Ok;->getResponse()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/b/c/c/a;->a(Lokhttp3/Response;)V

    invoke-virtual {p2}, Lru/gildor/coroutines/retrofit/Result$Ok;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;

    return-object p1

    :cond_4
    instance-of p1, p2, Lru/gildor/coroutines/retrofit/Result$Error;

    if-nez p1, :cond_6

    instance-of p1, p2, Lru/gildor/coroutines/retrofit/Result$Exception;

    if-eqz p1, :cond_5

    check-cast p2, Lru/gildor/coroutines/retrofit/Result$Exception;

    invoke-virtual {p2}, Lru/gildor/coroutines/retrofit/Result$Exception;->getException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_6
    check-cast p2, Lru/gildor/coroutines/retrofit/Result$Error;

    invoke-virtual {p2}, Lru/gildor/coroutines/retrofit/Result$Error;->getException()Lretrofit2/HttpException;

    move-result-object p1

    throw p1
.end method

.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/core/model/ArticleApi;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/remote/c$m;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c$m;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$m;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$m;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$m;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/remote/c$m;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/c$m;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/c$m;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/helpscout/beacon/internal/data/remote/c$m;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/helpscout/beacon/internal/data/remote/c;->f:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v4}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.lang.String.format(this, *args)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    invoke-interface {v2, p1}, Lcom/helpscout/beacon/internal/core/api/BeaconApiService;->suggestions(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    iput-object p0, v0, Lcom/helpscout/beacon/internal/data/remote/c$m;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/c$m;->b:I

    invoke-static {p1, v0}, Lru/gildor/coroutines/retrofit/CallAwaitKt;->awaitResult(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Lru/gildor/coroutines/retrofit/Result;

    const/4 v1, 0x0

    invoke-static {p1, v1, v3, v1}, Lru/gildor/coroutines/retrofit/ResultKt;->getOrThrow$default(Lru/gildor/coroutines/retrofit/Result;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/core/model/ArticleSuggestionsResponseApi;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleSuggestionsResponseApi;->getItems()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpscout/beacon/internal/core/model/ArticleSuggestionApi;

    iget-object v3, v0, Lcom/helpscout/beacon/internal/data/remote/c;->e:Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;

    invoke-virtual {v3, v2}, Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;->map(Lcom/helpscout/beacon/internal/core/model/ArticleSuggestionApi;)Lcom/helpscout/beacon/internal/core/model/ArticleApi;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method public b(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationThreadsApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v2}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->conversationThreads(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lokhttp3/ResponseBody;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v2}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->downloadThreadAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/internal/data/remote/c$s;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c$s;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$s;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$s;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$s;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/internal/data/remote/c$s;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p2, v6, Lcom/helpscout/beacon/internal/data/remote/c$s;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, v6, Lcom/helpscout/beacon/internal/data/remote/c$s;->b:I

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v7, :cond_1

    iget-object p1, v6, Lcom/helpscout/beacon/internal/data/remote/c$s;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/c;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/c;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/helpscout/beacon/internal/core/model/SubscribePushRequestBodyApi;

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p2}, Lcom/helpscout/beacon/BeaconDatastore;->getInstallId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v5, p2}, Lcom/helpscout/beacon/internal/core/model/SubscribePushRequestBodyApi;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p2}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v3

    iput-object p0, v6, Lcom/helpscout/beacon/internal/data/remote/c$s;->d:Ljava/lang/Object;

    iput v7, v6, Lcom/helpscout/beacon/internal/data/remote/c$s;->b:I

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->subscribeToConversation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/SubscribePushRequestBodyApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Lretrofit2/Response;

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p1, p2}, Lcom/helpscout/beacon/internal/data/remote/c;->a(Lretrofit2/Response;)Z

    move-result v7

    :goto_2
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/remote/c$k;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c$k;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$k;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$k;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$k;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/remote/c$k;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/c$k;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/c$k;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/c;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v4}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v4

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/c$k;->b:I

    invoke-interface {v2, p1, v4, v0}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->conversationsCount(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;->getCount()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_6

    :cond_5
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance v0, Lretrofit2/HttpException;

    invoke-direct {v0, p1}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    throw v0
.end method

.method public c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/internal/data/remote/c$j;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c$j;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$j;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$j;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$j;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/internal/data/remote/c$j;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p2, v6, Lcom/helpscout/beacon/internal/data/remote/c$j;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, v6, Lcom/helpscout/beacon/internal/data/remote/c$j;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/c;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v3}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v4}, Lcom/helpscout/beacon/BeaconDatastore;->getInstallId()Ljava/lang/String;

    move-result-object v4

    iput v2, v6, Lcom/helpscout/beacon/internal/data/remote/c$j;->b:I

    move-object v2, p2

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->chatToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p2, Lcom/helpscout/beacon/internal/domain/model/TokenApi;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/domain/model/TokenApi;->getToken()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/remote/c$l;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c$l;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$l;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$l;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$l;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/remote/c$l;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/c$l;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/c$l;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v2}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v2

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/c$l;->b:I

    invoke-interface {p1, v2, v0}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->customFields(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/CustomFieldApi;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomFieldApi;->getItems()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/internal/data/remote/c$p;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c$p;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$p;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$p;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$p;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/internal/data/remote/c$p;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    iget-object p2, v7, Lcom/helpscout/beacon/internal/data/remote/c$p;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, v7, Lcom/helpscout/beacon/internal/data/remote/c$p;->b:I

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v8, :cond_1

    iget-object p1, v7, Lcom/helpscout/beacon/internal/data/remote/c$p;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/c;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/c;->a()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p2}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p2}, Lcom/helpscout/beacon/BeaconDatastore;->getInstallId()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p2}, Lcom/helpscout/beacon/BeaconDatastore;->getAppId()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/helpscout/beacon/internal/core/model/RegisterPushTokenRequestBodyApi;

    const/4 p2, 0x2

    const/4 v1, 0x0

    invoke-direct {v6, p1, v1, p2, v1}, Lcom/helpscout/beacon/internal/core/model/RegisterPushTokenRequestBodyApi;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    iput-object p0, v7, Lcom/helpscout/beacon/internal/data/remote/c$p;->d:Ljava/lang/Object;

    iput v8, v7, Lcom/helpscout/beacon/internal/data/remote/c$p;->b:I

    invoke-interface/range {v1 .. v7}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->registerPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/RegisterPushTokenRequestBodyApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Lretrofit2/Response;

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p1, p2}, Lcom/helpscout/beacon/internal/data/remote/c;->a(Lretrofit2/Response;)Z

    move-result v8

    :goto_2
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/helpscout/beacon/internal/data/remote/c;->h:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v3}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    invoke-interface {v1, v0, p1}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->beacon(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lokhttp3/ResponseBody;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    invoke-interface {v0, p1, p2}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->downloadAttachment(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/remote/c$g;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c$g;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$g;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$g;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$g;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/remote/c$g;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/c$g;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/c$g;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/helpscout/beacon/internal/data/remote/c;->g:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v4}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.lang.String.format(this, *args)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/c$g;->b:I

    invoke-interface {v2, p1, v0}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->agents(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/AgentsApi;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/AgentsApi;->getItems()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v2}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->conversation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/remote/c$h;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/c$h;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$h;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/c$h;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/c$h;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/remote/c$h;-><init>(Lcom/helpscout/beacon/internal/data/remote/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/c$h;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/c$h;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/c;->b:Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v2}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/remote/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v4}, Lcom/helpscout/beacon/BeaconDatastore;->getInstallId()Ljava/lang/String;

    move-result-object v4

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/c$h;->b:I

    invoke-interface {p1, v2, v4, v0}, Lcom/helpscout/beacon/internal/data/remote/BeaconUiApiService;->anonymousChatToken(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/TokenApi;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/TokenApi;->getToken()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
