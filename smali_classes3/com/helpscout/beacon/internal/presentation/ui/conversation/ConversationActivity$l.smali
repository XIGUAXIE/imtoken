.class final Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$l;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Exception;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$l;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 5

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p1, Landroid/content/ActivityNotFoundException;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "conversationDataView"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$l;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    sget v4, Lcom/helpscout/beacon/ui/R$id;->conversationDataView:I

    invoke-virtual {p1, v4}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$l;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-static {v3}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->c(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helpscout/beacon/internal/presentation/common/d;->A0()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$l;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    sget v4, Lcom/helpscout/beacon/ui/R$id;->conversationDataView:I

    invoke-virtual {p1, v4}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$l;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-static {v3}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->c(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helpscout/beacon/internal/presentation/common/d;->D0()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {p1, v3, v2, v1, v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$l;->a(Ljava/lang/Exception;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
