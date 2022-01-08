.class public abstract Lproguard/ftsafe/c/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/bluetooth/BluetoothDevice;

.field private c:Lproguard/ftsafe/c/b;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lproguard/ftsafe/c/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lproguard/ftsafe/c/a;->b:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lproguard/ftsafe/c/d;)Lproguard/ftsafe/b/d;
.end method

.method public abstract a([BILproguard/ftsafe/c/e;ILjava/lang/Object;)Lproguard/ftsafe/b/d;
.end method

.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract c()Lproguard/ftsafe/b/b;
.end method

.method public d()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/c/a;->b:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/c/a;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lproguard/ftsafe/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lproguard/ftsafe/c/a;->b:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lproguard/ftsafe/c/a;

    invoke-virtual {p1}, Lproguard/ftsafe/c/a;->d()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/c/a;->c:Lproguard/ftsafe/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lproguard/ftsafe/c/b;->a()V

    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/c/a;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method
