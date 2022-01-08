.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/j;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/j;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/j;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/j$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/j$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/j;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/j;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/j;)Lcom/helpscout/beacon/internal/presentation/ui/chat/j$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/j$c;->a()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/j$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/j;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
