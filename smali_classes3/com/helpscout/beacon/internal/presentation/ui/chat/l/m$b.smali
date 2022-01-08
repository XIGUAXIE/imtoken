.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;

    sget v3, Lcom/helpscout/beacon/ui/R$id;->chatItemImageCustomer:I

    invoke-virtual {v2, v3}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v3, "chatItemImageCustomer"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
