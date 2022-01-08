.class Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;->upsert(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

.field final synthetic val$entity:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$13;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$13;->val$entity:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$13;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$13;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao_Impl$13;->val$entity:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    invoke-static {v0, v1, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$DefaultImpls;->upsert(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
