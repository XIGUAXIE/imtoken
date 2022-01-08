.class public interface abstract Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;
.super Ljava/lang/Object;
.source "ImkeyCoreXJna.java"

# interfaces
.implements Lcom/sun/jna/Library;


# static fields
.field public static final INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    const-class v0, Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;

    const-string v1, "connector"

    invoke-static {v1, v0}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;->INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;

    return-void
.end method


# virtual methods
.method public abstract call_imkey_api(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract imkey_clear_err()V
.end method

.method public abstract imkey_free_const_string(Ljava/lang/String;)V
.end method

.method public abstract imkey_get_last_err_message()Ljava/lang/String;
.end method

.method public abstract set_callback(Lorg/consenlabs/imtoken/walletapi/Sender;)V
.end method
