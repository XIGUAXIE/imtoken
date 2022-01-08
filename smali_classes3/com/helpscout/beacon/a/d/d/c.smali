.class public final Lcom/helpscout/beacon/a/d/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lcom/helpscout/beacon/a/d/d/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/helpscout/beacon/a/d/d/b;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twi_action"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x53bd3780

    if-eq v1, v2, :cond_3

    const v2, -0x42779e32

    if-eq v1, v2, :cond_2

    const v2, 0x73fda124

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "BEACON_CHAT_AGENT_REPLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/helpscout/beacon/a/d/d/b$c;->h:Lcom/helpscout/beacon/a/d/d/b$c$a;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/d/d/b$c$a;->a(Ljava/util/Map;)Lcom/helpscout/beacon/a/d/d/b$c;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string v1, "BEACON_CHAT_ENDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/helpscout/beacon/a/d/d/b$a;->d:Lcom/helpscout/beacon/a/d/d/b$a$a;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/d/d/b$a$a;->a(Ljava/util/Map;)Lcom/helpscout/beacon/a/d/d/b$a;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string v1, "BEACON_CHAT_INACTIVITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/helpscout/beacon/a/d/d/b$b;->d:Lcom/helpscout/beacon/a/d/d/b$b$a;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/d/d/b$b$a;->a(Ljava/util/Map;)Lcom/helpscout/beacon/a/d/d/b$b;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    sget-object p1, Lcom/helpscout/beacon/a/d/d/b$d;->a:Lcom/helpscout/beacon/a/d/d/b$d;

    :goto_1
    return-object p1
.end method
