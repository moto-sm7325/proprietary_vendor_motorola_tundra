.class public final synthetic Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Point;

.field public final synthetic f$1:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Point;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda12;->f$0:Landroid/graphics/Point;

    iput-object p2, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda12;->f$1:Lcom/motorola/camera/PreviewSize;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda12;->f$0:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda12;->f$1:Lcom/motorola/camera/PreviewSize;

    check-cast p1, Lcom/motorola/camera/PreviewSize;

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gt v1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/PreviewSize;->isSameAspectRatio(Lcom/motorola/camera/PreviewSize;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
