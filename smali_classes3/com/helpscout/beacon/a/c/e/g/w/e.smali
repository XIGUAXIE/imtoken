.class public final Lcom/helpscout/beacon/a/c/e/g/w/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/a/c/e/g/w/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

.field private final b:Lcom/helpscout/beacon/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;Lcom/helpscout/beacon/a/a/a;)V
    .locals 1

    const-string v0, "chatApiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/w/e;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/w/e;->b:Lcom/helpscout/beacon/a/a/a;

    return-void
.end method

.method private final a(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->getStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->getData()Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;

    move-result-object p1

    sget-object v0, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const-class v1, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/a/a/c/c;->b(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel subscription failed with error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->getStatus()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/helpscout/beacon/a/c/e/g/w/e$a;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    new-instance p1, Lcom/helpscout/beacon/a/c/e/g/w/e$a$a;

    const-string p2, "Pusher Auth API not called: \"channelName\" is empty/null"

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/a/c/e/g/w/e$a$a;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    new-instance p1, Lcom/helpscout/beacon/a/c/e/g/w/e$a$a;

    const-string p2, "Pusher Auth API not called: \"socketId\" is empty/null"

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/a/c/e/g/w/e$a$a;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/w/e;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    invoke-interface {v0, p2, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;->pusherAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/c/e/g/w/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/a/c/e/g/w/e$a$b;

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/a/c/e/g/w/e$a$b;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/helpscout/beacon/a/c/e/g/w/e$a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to retrieve Authentication token from Help Scout API: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/a/c/e/g/w/e$a$a;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
