.class public final Lcom/helpscout/beacon/internal/core/api/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lokhttp3/Cache;

.field private b:Lcom/helpscout/beacon/internal/core/api/e/b;

.field private c:Lcom/helpscout/beacon/internal/core/api/d;

.field private d:Lcom/helpscout/beacon/internal/core/api/b;

.field private e:Lcom/helpscout/beacon/internal/core/api/c;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()Lokhttp3/OkHttpClient;
    .locals 2

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/core/api/a;->g:Z

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/a;->b(Lokhttp3/OkHttpClient$Builder;Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/api/a;->a:Lokhttp3/Cache;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/api/a;->c:Lcom/helpscout/beacon/internal/core/api/d;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/api/a;->d:Lcom/helpscout/beacon/internal/core/api/b;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_2
    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/api/a;->b:Lcom/helpscout/beacon/internal/core/api/e/b;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_3
    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/api/a;->e:Lcom/helpscout/beacon/internal/core/api/c;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_4
    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/core/api/a;->f:Z

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/a;->a(Lokhttp3/OkHttpClient$Builder;Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    const-string v1, "OkHttpClient.Builder()\n \u2026led)\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/core/api/b;)Lcom/helpscout/beacon/internal/core/api/a;
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/core/api/a;->d:Lcom/helpscout/beacon/internal/core/api/b;

    return-object p0
.end method

.method public final a(Lcom/helpscout/beacon/internal/core/api/c;)Lcom/helpscout/beacon/internal/core/api/a;
    .locals 1

    const-string v0, "sdkIdentifierInterceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/core/api/a;->e:Lcom/helpscout/beacon/internal/core/api/c;

    return-object p0
.end method

.method public final a(Lcom/helpscout/beacon/internal/core/api/d;)Lcom/helpscout/beacon/internal/core/api/a;
    .locals 1

    const-string v0, "userAgentInterceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/core/api/a;->c:Lcom/helpscout/beacon/internal/core/api/d;

    return-object p0
.end method

.method public final a(Lcom/helpscout/beacon/internal/core/api/e/b;)Lcom/helpscout/beacon/internal/core/api/a;
    .locals 1

    const-string v0, "cookieInterceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/core/api/a;->b:Lcom/helpscout/beacon/internal/core/api/e/b;

    return-object p0
.end method

.method public final a(Z)Lcom/helpscout/beacon/internal/core/api/a;
    .locals 0

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/core/api/a;->g:Z

    return-object p0
.end method

.method public final a()Lokhttp3/OkHttpClient;
    .locals 1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/core/api/a;->b()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final b(Z)Lcom/helpscout/beacon/internal/core/api/a;
    .locals 0

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/core/api/a;->f:Z

    return-object p0
.end method
