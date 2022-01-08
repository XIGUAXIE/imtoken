.class public final Lcom/helpscout/beacon/internal/core/api/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/helpscout/beacon/internal/core/api/e/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/core/api/e/a;)V
    .locals 1

    const-string v0, "cookieDatastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/core/api/e/b;->b:Lcom/helpscout/beacon/internal/core/api/e/a;

    const-string p1, "Cookie"

    iput-object p1, p0, Lcom/helpscout/beacon/internal/core/api/e/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/api/e/b;->b:Lcom/helpscout/beacon/internal/core/api/e/a;

    invoke-interface {v1}, Lcom/helpscout/beacon/internal/core/api/e/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/api/e/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/core/api/e/b;->b:Lcom/helpscout/beacon/internal/core/api/e/a;

    invoke-interface {v2}, Lcom/helpscout/beacon/internal/core/api/e/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    const-string v0, "chain.proceed(requestWithDocsCookies)"

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    const-string v0, "chain.proceed(originalRequest)"

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
