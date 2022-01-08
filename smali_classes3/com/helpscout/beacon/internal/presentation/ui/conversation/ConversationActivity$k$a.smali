.class final Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;->a()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;Ljava/lang/String;)V
    .locals 2

    const-string v0, "attachment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/a/d/c/e$a;

    invoke-direct {v1, p2, p1}, Lcom/helpscout/beacon/a/d/c/e$a;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k$a;->a(Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
