.class final synthetic Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$renderAgents$2;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {}
    d2 = {}
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;)V
    .locals 6

    const-class v2, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;

    const-string v3, "config"

    const-string v4, "getConfig()Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;->access$getConfig$p(Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;)Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;->access$setConfig$p(Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;)V

    return-void
.end method
