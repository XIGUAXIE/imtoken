.class public final Lcoil/fetch/HttpUrlFetcher;
.super Lcoil/fetch/HttpFetcher;
.source "HttpFetcher.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcoil/fetch/HttpFetcher<",
        "Lokhttp3/HttpUrl;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0002H\u0016J\u000c\u0010\t\u001a\u00020\u0002*\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcoil/fetch/HttpUrlFetcher;",
        "Lcoil/fetch/HttpFetcher;",
        "Lokhttp3/HttpUrl;",
        "callFactory",
        "Lokhttp3/Call$Factory;",
        "(Lokhttp3/Call$Factory;)V",
        "key",
        "",
        "data",
        "toHttpUrl",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 1

    const-string v0, "callFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Lcoil/fetch/HttpFetcher;-><init>(Lokhttp3/Call$Factory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic key(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 33
    check-cast p1, Lokhttp3/HttpUrl;

    invoke-virtual {p0, p1}, Lcoil/fetch/HttpUrlFetcher;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public key(Lokhttp3/HttpUrl;)Ljava/lang/String;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic toHttpUrl(Ljava/lang/Object;)Lokhttp3/HttpUrl;
    .locals 0

    .line 33
    check-cast p1, Lokhttp3/HttpUrl;

    invoke-virtual {p0, p1}, Lcoil/fetch/HttpUrlFetcher;->toHttpUrl(Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1
.end method

.method public toHttpUrl(Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;
    .locals 1

    const-string v0, "$this$toHttpUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
