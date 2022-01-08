.class public Lcom/zoontek/rnpermissions/RNPermissionsModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNPermissionsModule.java"

# interfaces
.implements Lcom/facebook/react/modules/core/PermissionListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNPermissions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoontek/rnpermissions/RNPermissionsModule$Request;
    }
.end annotation


# static fields
.field private static final ERROR_INVALID_ACTIVITY:Ljava/lang/String; = "E_INVALID_ACTIVITY"

.field public static final MODULE_NAME:Ljava/lang/String; = "RNPermissions"

.field private static final SETTING_NAME:Ljava/lang/String; = "@RNPermissions:NonRequestables"


# instance fields
.field private final BLOCKED:Ljava/lang/String;

.field private final DENIED:Ljava/lang/String;

.field private final GRANTED:Ljava/lang/String;

.field private final UNAVAILABLE:Ljava/lang/String;

.field private mRequestCode:I

.field private final mRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/zoontek/rnpermissions/RNPermissionsModule$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I

    const-string v1, "granted"

    .line 44
    iput-object v1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->GRANTED:Ljava/lang/String;

    const-string v1, "denied"

    .line 45
    iput-object v1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->DENIED:Ljava/lang/String;

    const-string v1, "unavailable"

    .line 46
    iput-object v1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->UNAVAILABLE:Ljava/lang/String;

    const-string v1, "blocked"

    .line 47
    iput-object v1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->BLOCKED:Ljava/lang/String;

    const-string v1, "@RNPermissions:NonRequestables"

    .line 51
    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 52
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequests:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/zoontek/rnpermissions/RNPermissionsModule;)Landroid/content/SharedPreferences;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private getFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "android.permission.ACCEPT_HANDOVER"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ACCEPT_HANDOVER"

    return-object p1

    :cond_0
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ACCESS_BACKGROUND_LOCATION"

    return-object p1

    :cond_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "ACCESS_COARSE_LOCATION"

    return-object p1

    :cond_2
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "ACCESS_FINE_LOCATION"

    return-object p1

    :cond_3
    const-string v0, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "ADD_VOICEMAIL"

    return-object p1

    :cond_4
    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "ACTIVITY_RECOGNITION"

    return-object p1

    :cond_5
    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "ANSWER_PHONE_CALLS"

    return-object p1

    :cond_6
    const-string v0, "android.permission.BODY_SENSORS"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "BODY_SENSORS"

    return-object p1

    :cond_7
    const-string v0, "android.permission.CALL_PHONE"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "CALL_PHONE"

    return-object p1

    :cond_8
    const-string v0, "android.permission.CAMERA"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "CAMERA"

    return-object p1

    :cond_9
    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "GET_ACCOUNTS"

    return-object p1

    :cond_a
    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "PROCESS_OUTGOING_CALLS"

    return-object p1

    :cond_b
    const-string v0, "android.permission.READ_CALENDAR"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "READ_CALENDAR"

    return-object p1

    :cond_c
    const-string v0, "android.permission.READ_CALL_LOG"

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "READ_CALL_LOG"

    return-object p1

    :cond_d
    const-string v0, "android.permission.READ_CONTACTS"

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "READ_CONTACTS"

    return-object p1

    :cond_e
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "READ_EXTERNAL_STORAGE"

    return-object p1

    :cond_f
    const-string v0, "android.permission.READ_PHONE_NUMBERS"

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "READ_PHONE_NUMBERS"

    return-object p1

    :cond_10
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p1, "READ_PHONE_STATE"

    return-object p1

    :cond_11
    const-string v0, "android.permission.READ_SMS"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p1, "READ_SMS"

    return-object p1

    :cond_12
    const-string v0, "android.permission.RECEIVE_MMS"

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p1, "RECEIVE_MMS"

    return-object p1

    :cond_13
    const-string v0, "android.permission.RECEIVE_SMS"

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "RECEIVE_SMS"

    return-object p1

    :cond_14
    const-string v0, "android.permission.RECEIVE_WAP_PUSH"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p1, "RECEIVE_WAP_PUSH"

    return-object p1

    :cond_15
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p1, "RECORD_AUDIO"

    return-object p1

    :cond_16
    const-string v0, "android.permission.SEND_SMS"

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p1, "SEND_SMS"

    return-object p1

    :cond_17
    const-string v0, "android.permission.USE_SIP"

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p1, "USE_SIP"

    return-object p1

    :cond_18
    const-string v0, "android.permission.WRITE_CALENDAR"

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p1, "WRITE_CALENDAR"

    return-object p1

    :cond_19
    const-string v0, "android.permission.WRITE_CALL_LOG"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p1, "WRITE_CALL_LOG"

    return-object p1

    :cond_1a
    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p1, "WRITE_CONTACTS"

    return-object p1

    :cond_1b
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "WRITE_EXTERNAL_STORAGE"

    return-object p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;
    .locals 2

    .line 408
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 412
    instance-of v1, v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    if-eqz v1, :cond_0

    .line 417
    check-cast v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    return-object v0

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to use permissions API but the host Activity doesn\'t implement PermissionAwareActivity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to use permissions API while not attached to an Activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private permissionExists(Ljava/lang/String;)Z
    .locals 2

    .line 135
    invoke-direct {p0, p1}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 141
    :cond_0
    :try_start_0
    const-class v1, Landroid/Manifest$permission;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method


# virtual methods
.method public checkMultiplePermissions(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 287
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 288
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 290
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 291
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 293
    invoke-direct {p0, v4}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->permissionExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "unavailable"

    .line 294
    invoke-interface {v0, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 295
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    const-string v7, "blocked"

    const-string v8, "granted"

    if-ge v5, v6, :cond_2

    .line 298
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_1

    move-object v7, v8

    .line 296
    :cond_1
    invoke-interface {v0, v4, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 302
    :cond_2
    invoke-virtual {v1, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 303
    invoke-interface {v0, v4, v8}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_3
    iget-object v5, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 305
    invoke-interface {v0, v4, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v5, "denied"

    .line 307
    invoke-interface {v0, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    :cond_5
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public checkNotifications(Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    .line 152
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 153
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-string v3, "status"

    if-eqz v0, :cond_0

    const-string v0, "granted"

    .line 156
    invoke-interface {v1, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "blocked"

    .line 158
    invoke-interface {v1, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "settings"

    .line 161
    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 162
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public checkPermission(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    if-eqz p1, :cond_5

    .line 185
    invoke-direct {p0, p1}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->permissionExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const-string v3, "blocked"

    const-string v4, "granted"

    if-ge v1, v2, :cond_2

    .line 193
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_1

    move-object v3, v4

    :cond_1
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 200
    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 201
    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 203
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string p1, "denied"

    .line 205
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string p1, "unavailable"

    .line 186
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNPermissions"

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 4

    .line 401
    iget-object p2, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zoontek/rnpermissions/RNPermissionsModule$Request;

    .line 402
    iget-object v0, p2, Lcom/zoontek/rnpermissions/RNPermissionsModule$Request;->callback:Lcom/facebook/react/bridge/Callback;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-direct {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object p3

    const/4 v3, 0x1

    aput-object p3, v1, v3

    iget-object p2, p2, Lcom/zoontek/rnpermissions/RNPermissionsModule$Request;->rationaleStatuses:[Z

    const/4 p3, 0x2

    aput-object p2, v1, p3

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 403
    iget-object p2, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 404
    iget-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public openSettings(Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 169
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 170
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 172
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 173
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "package"

    const/4 v4, 0x0

    .line 174
    invoke-static {v3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 176
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 177
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "E_INVALID_ACTIVITY"

    .line 179
    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public requestMultiplePermissions(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 11
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 316
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 320
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 322
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 323
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 325
    invoke-direct {p0, v6}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->permissionExists(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "unavailable"

    .line 326
    invoke-interface {v0, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 328
    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    const-string v9, "blocked"

    const-string v10, "granted"

    if-ge v7, v8, :cond_2

    .line 331
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_1

    move-object v9, v10

    .line 329
    :cond_1
    invoke-interface {v0, v6, v9}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 337
    :cond_2
    invoke-virtual {v2, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 338
    invoke-interface {v0, v6, v10}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 340
    :cond_3
    iget-object v7, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 341
    invoke-interface {v0, v6, v9}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 344
    :cond_4
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 348
    :cond_5
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result p1

    if-ne p1, v5, :cond_6

    .line 349
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 354
    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object p1

    .line 355
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Z

    const/4 v4, 0x0

    .line 357
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 359
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v5}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 362
    :cond_7
    iget-object v4, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequests:Landroid/util/SparseArray;

    iget v5, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I

    new-instance v6, Lcom/zoontek/rnpermissions/RNPermissionsModule$Request;

    new-instance v7, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;

    invoke-direct {v7, p0, v1, v0, p2}, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;-><init>(Lcom/zoontek/rnpermissions/RNPermissionsModule;Ljava/util/ArrayList;Lcom/facebook/react/bridge/WritableMap;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {v6, p0, v2, v7}, Lcom/zoontek/rnpermissions/RNPermissionsModule$Request;-><init>(Lcom/zoontek/rnpermissions/RNPermissionsModule;[ZLcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v0, v3, [Ljava/lang/String;

    .line 392
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I

    invoke-interface {p1, v0, v1, p0}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    .line 393
    iget p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string v0, "E_INVALID_ACTIVITY"

    .line 395
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public requestPermission(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    if-eqz p1, :cond_5

    .line 225
    invoke-direct {p0, p1}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->permissionExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 232
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const-string v3, "blocked"

    const-string v4, "granted"

    if-ge v1, v2, :cond_2

    .line 233
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_1

    move-object v3, v4

    :cond_1
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 240
    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 241
    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 249
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Z

    .line 251
    invoke-interface {v0, p1}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    aput-boolean v4, v3, v1

    .line 253
    iget-object v4, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequests:Landroid/util/SparseArray;

    iget v5, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I

    new-instance v6, Lcom/zoontek/rnpermissions/RNPermissionsModule$Request;

    new-instance v7, Lcom/zoontek/rnpermissions/RNPermissionsModule$1;

    invoke-direct {v7, p0, p2, p1}, Lcom/zoontek/rnpermissions/RNPermissionsModule$1;-><init>(Lcom/zoontek/rnpermissions/RNPermissionsModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    invoke-direct {v6, p0, v3, v7}, Lcom/zoontek/rnpermissions/RNPermissionsModule$Request;-><init>(Lcom/zoontek/rnpermissions/RNPermissionsModule;[ZLcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v1

    .line 278
    iget p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I

    invoke-interface {v0, v3, p1, p0}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    .line 279
    iget p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "E_INVALID_ACTIVITY"

    .line 281
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string p1, "unavailable"

    .line 226
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    if-eqz p1, :cond_1

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 216
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "E_INVALID_ACTIVITY"

    .line 219
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 212
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
