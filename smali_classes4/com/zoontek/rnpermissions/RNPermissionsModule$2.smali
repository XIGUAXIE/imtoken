.class Lcom/zoontek/rnpermissions/RNPermissionsModule$2;
.super Ljava/lang/Object;
.source "RNPermissionsModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoontek/rnpermissions/RNPermissionsModule;->requestMultiplePermissions(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zoontek/rnpermissions/RNPermissionsModule;

.field final synthetic val$output:Lcom/facebook/react/bridge/WritableMap;

.field final synthetic val$permissionsToCheck:Ljava/util/ArrayList;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/zoontek/rnpermissions/RNPermissionsModule;Ljava/util/ArrayList;Lcom/facebook/react/bridge/WritableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;->this$0:Lcom/zoontek/rnpermissions/RNPermissionsModule;

    iput-object p2, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;->val$permissionsToCheck:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;->val$output:Lcom/facebook/react/bridge/WritableMap;

    iput-object p4, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    .line 368
    aget-object v1, p1, v0

    check-cast v1, [I

    const/4 v2, 0x1

    .line 369
    aget-object v3, p1, v2

    check-cast v3, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    const/4 v4, 0x2

    .line 370
    aget-object p1, p1, v4

    check-cast p1, [Z

    .line 372
    :goto_0
    iget-object v4, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;->val$permissionsToCheck:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 373
    iget-object v4, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;->val$permissionsToCheck:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 375
    array-length v5, v1

    if-lez v5, :cond_0

    aget v5, v1, v0

    if-nez v5, :cond_0

    .line 376
    iget-object v5, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;->val$output:Lcom/facebook/react/bridge/WritableMap;

    const-string v6, "granted"

    invoke-interface {v5, v4, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 378
    :cond_0
    aget-boolean v5, p1, v0

    if-eqz v5, :cond_1

    .line 379
    invoke-interface {v3, v4}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 380
    iget-object v5, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;->this$0:Lcom/zoontek/rnpermissions/RNPermissionsModule;

    invoke-static {v5}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->access$000(Lcom/zoontek/rnpermissions/RNPermissionsModule;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 381
    iget-object v5, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;->val$output:Lcom/facebook/react/bridge/WritableMap;

    const-string v6, "blocked"

    invoke-interface {v5, v4, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 383
    :cond_1
    iget-object v5, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;->val$output:Lcom/facebook/react/bridge/WritableMap;

    const-string v6, "denied"

    invoke-interface {v5, v4, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_2
    iget-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v0, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;->val$output:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
