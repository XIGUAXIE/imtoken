.class public Lcom/facebook/react/views/picker/ReactPicker;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "ReactPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
    }
.end annotation


# instance fields
.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/views/picker/ReactPickerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;

.field private mStagedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/views/picker/ReactPickerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStagedPrimaryTextColor:Ljava/lang/Integer;

.field private mStagedSelection:Ljava/lang/Integer;

.field private final measureAndLayout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    .line 29
    new-instance p1, Lcom/facebook/react/views/picker/ReactPicker$1;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/picker/ReactPicker$1;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 73
    new-instance p1, Lcom/facebook/react/views/picker/ReactPicker$2;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/picker/ReactPicker$2;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    .line 29
    new-instance p1, Lcom/facebook/react/views/picker/ReactPicker$1;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/picker/ReactPicker$1;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 73
    new-instance p1, Lcom/facebook/react/views/picker/ReactPicker$2;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/picker/ReactPicker$2;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    .line 57
    iput p2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    .line 29
    new-instance p1, Lcom/facebook/react/views/picker/ReactPicker$1;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/picker/ReactPicker$1;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 73
    new-instance p1, Lcom/facebook/react/views/picker/ReactPicker$2;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/picker/ReactPicker$2;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    .line 29
    new-instance p1, Lcom/facebook/react/views/picker/ReactPicker$1;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/picker/ReactPicker$1;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 73
    new-instance p1, Lcom/facebook/react/views/picker/ReactPicker$2;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/picker/ReactPicker$2;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    .line 29
    new-instance p1, Lcom/facebook/react/views/picker/ReactPicker$1;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/picker/ReactPicker$1;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 73
    new-instance p1, Lcom/facebook/react/views/picker/ReactPicker$2;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/picker/ReactPicker$2;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    .line 70
    iput p4, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/views/picker/ReactPicker;)Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;

    return-object p0
.end method


# virtual methods
.method commitStagedData()V
    .locals 5

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/picker/ReactPicker;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/facebook/react/views/picker/ReactPicker;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/views/picker/ReactPickerAdapter;

    .line 148
    invoke-virtual {p0}, Lcom/facebook/react/views/picker/ReactPicker;->getSelectedItemPosition()I

    move-result v2

    .line 149
    iget-object v3, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedItems:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItems:Ljava/util/List;

    if-eq v3, v4, :cond_1

    .line 150
    iput-object v3, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItems:Ljava/util/List;

    .line 151
    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedItems:Ljava/util/List;

    if-nez v1, :cond_0

    .line 153
    new-instance v1, Lcom/facebook/react/views/picker/ReactPickerAdapter;

    invoke-virtual {p0}, Lcom/facebook/react/views/picker/ReactPicker;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItems:Ljava/util/List;

    invoke-direct {v1, v3, v4}, Lcom/facebook/react/views/picker/ReactPickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 154
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/picker/ReactPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/react/views/picker/ReactPickerAdapter;->clear()V

    .line 157
    iget-object v3, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItems:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/facebook/react/views/picker/ReactPickerAdapter;->addAll(Ljava/util/Collection;)V

    .line 158
    invoke-virtual {v1}, Lcom/facebook/react/views/picker/ReactPickerAdapter;->notifyDataSetChanged()V

    .line 162
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/facebook/react/views/picker/ReactPicker;->setSelection(IZ)V

    .line 164
    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    .line 167
    :cond_2
    iget-object v2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedPrimaryTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 169
    invoke-virtual {v1}, Lcom/facebook/react/views/picker/ReactPickerAdapter;->getPrimaryTextColor()Ljava/lang/Integer;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 170
    iget-object v2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedPrimaryTextColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/facebook/react/views/picker/ReactPickerAdapter;->setPrimaryTextColor(Ljava/lang/Integer;)V

    .line 171
    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedPrimaryTextColor:Ljava/lang/Integer;

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/picker/ReactPicker;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public getMode()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    return v0
.end method

.method public getOnSelectListener()Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 97
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatSpinner;->onLayout(ZIIII)V

    .line 103
    invoke-virtual {p0}, Lcom/facebook/react/views/picker/ReactPicker;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/picker/ReactPicker;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->requestLayout()V

    .line 92
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/picker/ReactPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setImmediateSelection(I)V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/facebook/react/views/picker/ReactPicker;->getSelectedItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/picker/ReactPicker;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/views/picker/ReactPicker;->setSelection(IZ)V

    .line 131
    iget-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/picker/ReactPicker;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method

.method public setOnSelectListener(Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;

    return-void
.end method

.method setStagedItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/views/picker/ReactPickerItem;",
            ">;)V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedItems:Ljava/util/List;

    return-void
.end method

.method setStagedPrimaryTextColor(Ljava/lang/Integer;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedPrimaryTextColor:Ljava/lang/Integer;

    return-void
.end method

.method setStagedSelection(I)V
    .locals 0

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    return-void
.end method
