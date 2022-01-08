.class public final Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001d\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService$Factory;",
        "",
        "Lokhttp3/OkHttpClient;",
        "okHttpClient",
        "Lcom/helpscout/beacon/a/a/a;",
        "parser",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;",
        "create",
        "(Lokhttp3/OkHttpClient;Lcom/helpscout/beacon/a/a/a;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;",
        "",
        "BASE_URL",
        "Ljava/lang/String;",
        "<init>",
        "()V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService$Factory;

.field private static final BASE_URL:Ljava/lang/String; = "https://chatapi.helpscout.net/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService$Factory;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService$Factory;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService$Factory;->$$INSTANCE:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lokhttp3/OkHttpClient;Lcom/helpscout/beacon/a/a/a;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;
    .locals 2

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://chatapi.helpscout.net/"

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    invoke-interface {p2}, Lcom/helpscout/beacon/a/a/a;->a()Lretrofit2/Converter$Factory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    const-class p2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "retrofit.create(ChatApiService::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

    return-object p1
.end method
