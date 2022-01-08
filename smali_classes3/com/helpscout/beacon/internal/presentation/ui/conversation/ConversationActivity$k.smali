.class final Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;
    .locals 7

    new-instance v6, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->b(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k$a;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k$b;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->c(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v4

    new-instance v5, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k$c;

    invoke-direct {v5, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/helpscout/beacon/internal/presentation/common/d;Lkotlin/jvm/functions/Function2;)V

    return-object v6
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;->a()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v0

    return-object v0
.end method
