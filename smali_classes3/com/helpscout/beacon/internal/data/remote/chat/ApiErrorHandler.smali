.class public final Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001b\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0003\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;",
        "",
        "Lretrofit2/Response;",
        "response",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;",
        "parseError",
        "(Lretrofit2/Response;)Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;",
        "invalidErrorApi",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;",
        "Lcom/helpscout/beacon/a/a/c/c$a;",
        "parser",
        "Lcom/helpscout/beacon/a/a/c/c$a;",
        "unknownErrorApi",
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
.field public static final INSTANCE:Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;

.field private static final invalidErrorApi:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

.field private static final parser:Lcom/helpscout/beacon/a/a/c/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/helpscout/beacon/a/a/c/c$a<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;",
            ">;"
        }
    .end annotation
.end field

.field private static final unknownErrorApi:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;->INSTANCE:Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;

    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    const/4 v2, 0x0

    const-string v3, "Unknown error"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;->unknownErrorApi:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;->invalidErrorApi:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    sget-object v0, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const-class v1, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/a/a/c/c;->b(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;->parser:Lcom/helpscout/beacon/a/a/c/c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseError(Lretrofit2/Response;)Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "*>;)",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;"
        }
    .end annotation

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;->parser:Lcom/helpscout/beacon/a/a/c/c$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "{}"

    :goto_0
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;->invalidErrorApi:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    :goto_1
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;->isValid()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_2

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error parsing the Api Error"

    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v4

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_3
    sget-object p1, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandler;->unknownErrorApi:Lcom/helpscout/beacon/internal/data/remote/chat/ErrorApi;

    return-object p1
.end method
