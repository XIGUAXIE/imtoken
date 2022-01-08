.class Lcom/imagepicker/permissions/PermissionUtils$2;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imagepicker/permissions/PermissionUtils;->explainingDialog(Lcom/imagepicker/ImagePickerModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/imagepicker/permissions/PermissionUtils$OnExplainingPermissionCallback;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/imagepicker/permissions/PermissionUtils$OnExplainingPermissionCallback;

.field final synthetic val$reference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/imagepicker/permissions/PermissionUtils$OnExplainingPermissionCallback;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/imagepicker/permissions/PermissionUtils$2;->val$callback:Lcom/imagepicker/permissions/PermissionUtils$OnExplainingPermissionCallback;

    iput-object p2, p0, Lcom/imagepicker/permissions/PermissionUtils$2;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/imagepicker/permissions/PermissionUtils$2;->val$callback:Lcom/imagepicker/permissions/PermissionUtils$OnExplainingPermissionCallback;

    iget-object v1, p0, Lcom/imagepicker/permissions/PermissionUtils$2;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1, p1}, Lcom/imagepicker/permissions/PermissionUtils$OnExplainingPermissionCallback;->onCancel(Ljava/lang/ref/WeakReference;Landroid/content/DialogInterface;)V

    .line 64
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
