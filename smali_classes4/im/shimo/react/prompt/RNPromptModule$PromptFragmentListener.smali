.class Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;
.super Ljava/lang/Object;
.source "RNPromptModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/shimo/react/prompt/RNPromptModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PromptFragmentListener"
.end annotation


# instance fields
.field private final mCallback:Lcom/facebook/react/bridge/Callback;

.field private mCallbackConsumed:Z

.field final synthetic this$0:Lim/shimo/react/prompt/RNPromptModule;


# direct methods
.method public constructor <init>(Lim/shimo/react/prompt/RNPromptModule;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->this$0:Lim/shimo/react/prompt/RNPromptModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 204
    iput-boolean p1, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallbackConsumed:Z

    .line 207
    iput-object p2, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallback:Lcom/facebook/react/bridge/Callback;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, ""

    .line 212
    invoke-virtual {p0, p2, v0}, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->onConfirm(ILjava/lang/String;)V

    .line 213
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onConfirm(ILjava/lang/String;)V
    .locals 4

    .line 216
    iget-boolean v0, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallbackConsumed:Z

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->this$0:Lim/shimo/react/prompt/RNPromptModule;

    invoke-static {v0}, Lim/shimo/react/prompt/RNPromptModule;->access$000(Lim/shimo/react/prompt/RNPromptModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "buttonClicked"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 219
    iput-boolean v2, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallbackConsumed:Z

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 226
    iget-boolean p1, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallbackConsumed:Z

    if-nez p1, :cond_0

    .line 227
    iget-object p1, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->this$0:Lim/shimo/react/prompt/RNPromptModule;

    invoke-static {p1}, Lim/shimo/react/prompt/RNPromptModule;->access$100(Lim/shimo/react/prompt/RNPromptModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dismissed"

    aput-object v3, v1, v2

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 229
    iput-boolean v0, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallbackConsumed:Z

    :cond_0
    return-void
.end method
