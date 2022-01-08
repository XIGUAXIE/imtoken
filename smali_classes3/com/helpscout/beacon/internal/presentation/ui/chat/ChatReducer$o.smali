.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$o;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/a/c/b/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$o;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;
    .locals 5

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$o;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->userHasEmail()Z

    move-result v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$o;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v4}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v4

    invoke-interface {v4}, Lcom/helpscout/beacon/BeaconDatastore;->getChatConfig()Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->getEmailTranscriptEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$o;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getEnablePreviousMessages()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v1, v4, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;-><init>(ZZ)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$o;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;

    move-result-object v0

    return-object v0
.end method
