import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:web_testing/application.dart';
import 'package:web_testing/routes.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final router = FluroRouter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return InkWell(
                  onTap: () {
                    Application.router.navigateTo(
                      context,
                      Routes1.detailPage + '?id=$index',
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 400.0,
                      right: 400.0,
                      bottom: 16.0,
                      top: index == 0 ? 24 : 0,
                    ),
                    child: Card(
                      elevation: 5,
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(24),
                        title: Text('Test$index'),
                        leading: Image.network(
                            'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACoCAMAAABt9SM9AAABgFBMVEVNqon///9FQl3S0tD++vH+8E7/1zb08On+/vZDQFxNrovX19RNSmM9OVeSkZ47NlRGS2BXVGtGUWNFOlpMo4e4tr5EPlxIaGvyaEj///tjqc9RT2S4urFEp4Wxs6vFxsLxWT1Cp4v/7Ff/9Ek6pIH/1jb/3jSizrn/71Tm5uRns5bd7ODN5NU9pYw1MVFYro+FwKZmsYQ0NV9Le3Ta6t7u9et3up/H0W+93Mxts4PE1mj+4ECTxrCyzm7xUDFXnsovhbviwD/c4F6pkE5IW2j11D5ZUGypqLJ4dog4NU0YFigjITMtKj/X12np4GL15V9+uH+jxHqQvH2px3Tt4WDb2meWxHa802ry61Soy3KmvWzCxV2YlZz+5uD7zsf0jXf4vLD3opL2uKnn5lnezU3zfGL1mH6ivtPA0t772dNco8v97OmMtNClnlgUHGHFp0eDclaNhltqYFkiKmFUUlu3r1etlEygmFqXg1B7bVbVtERMjX1zZlfApEkiG0ZLhHiddTFNAAATU0lEQVR4nO2di1/bRrbHZUNsScEQYmKicOcG2YqFH7JsgYxInUASKHR3CQZCnrTNbtJNm7t3Q1O2m5Z086/vjJ6jpyWQbTnx75MPYCH0+OacM2eOZkZEaqzQIoZ9AaOknrC2p2a+FO1ULghrp0GlqS9D6Vxj4kKwthvpL0gUdSFYs9Swb2Cg6mFaPWAVhnPR3/xlOP9JM9dGD9Y3f/rTn4dy4jGsCBpFWOm//PmboZx3JGHBhmkoZx1RWMNRrLCGnTf2Qf2CVUhf+fxUoPoCq7BMf4aam+oLrPwc8RmKni+MYYXVGFYEjWFF0BhWBI0qLNDn43tqNGEBuToMWqMJq8aQYl9P4K3RhAXk9tiyQkscx6ykaxRgDcWKvDQCsEC7eq4/c2/ilIs1C4mD5bpHwKdWOJ+dBZb1O47Iu47EdRjfI4VS0mCJ7mZOJJmOuRGImHGwuw/3ut7HgYid2YVYZ0jmQs1owmBxddn1fw+aDGn+zKcscITwsFhc8zkQyShOLE2SZOoXccRkwaquMEyt7dzKKSlFRwjaKcy9hKNiEdsPgwN4C7C1USTrn5EbVmFqLrtgEZycMmI8IOsWE3a1WDSDFqg2rd8AGXNdayt/rqsylSxY0A1Jr2ZMJA3v5FZqlnGwh8U9wfzTGgmMPwWdVO1CNuSthMEicPNAAqrlgKbhfYDHghrYLz7UYYG2DI2yqf8CmWIfsrOkwXKIPdhVaXEKo0VmUCXx3xaPTDdUYLjTozdkq/TBsJIOiy4WV1XbAbKeInF4RrC2tGrC4hTT5jiZ7EvWn2xYLMwNNFpAZDQH5WpYptTCYBGi4XnQsJpfICyitWvS6mjWAni8mSseYim8sZ2ruaK7b6IfSQmHRQjdPZ0WV1fjEGgbySYHCHZv38BQtSJ6O+XoTLJrj2OhlXRYBCvcMWxLryUbsGQFsHsH+m4wtTdcj6tp0d3qN4rFIh3HtSQeFjSu1tEllVZVjeDASCJgyBceGr0dUDdjelX/ybK6vUfxXMkIwIK4DoookANe5aQnUyjjYndb+i5crW6mraqJsXfMfuPeUTwhazRgQY9aRbQ4tRtsBCSRBOyqsQdHGl5Y1XKMVnGpqzJiH60KRDwaDVjwlrsH6NbxXBPIItg3P8lG3qCoMIXdJc0L2YeHMdnV6MDSBNp4Z1lpE2Y1q2r0r7WiH9vVwhzBHh3ExmpUYBmhCTStbZCc9aFpRjIVmrB3pLFa7cbHakRgCaumL+EFHOznjv69qm5jD/e0/Q9bMbIaDVjCPmzZ9Lv2qXQam/XUdE/9yh5oFhlX32cUYKl9nuKhO69kdQms/cGFsKqh1VGBC9WSMSUSFrCbggZrtWXbyApC6/GT+6+eXlp6+vT+7WddQjCBdfGgDkQ5JcdjW0mEBZNPznZ3wmGxuG9Lllihe/tpqXTJUunS/UNC32cNZ1UlU3GNjEgirCrDyE1b3UDYtSWWLPHsKQ7K4FU6WnPmn1yHIR3oz68kwhIVkmFWbHVh3AVZ4dklD1Qar/trtujF8al6fI//kwgLxixeTjGK910KXS+rsnDdxoI9V5fbMdaXEwkL4uKatZSn/wi3g1AhWk+NPBSINQXEWTJNKCyEq1pPueyCpV/1YAWVea5Frmo95kc8iYWFcIkKU6viuNi1nqQgq0z5hVr+svqR7OF+HJl8gmFBcQRPYgE6FKuvbhm0TAldqwdwEZmwKCqXayQNFjKvTo3XA09oVogWxoY9XIJJbQy2pcKiZhqN9OzO9PHEt9/99H+JgoWaxqaiO9RSWFaQ1nPMttjDWFhBWDON3M72RHaSIaG+u7t49/r3L79NAiyrwwfanSp0pvu9WS3prCAtvDYjrMZRLQXc/PFlRGlSU3bxOtTi4vW//sQMGhan8FgwZ/cfru6vEXofGYiicCeEE5qsMplb/jd9njYSNje8bIFCIr+/rmlxcfH7lw6P7C8s1DHB+nDIdaD2du8ctNTaZ6t3znApg+uFpzHBlESJ/rwa5n0rNlAqrO8Wr5tavPu3wcECSooksZFqWlTe23v0cHd39QB60quIrKAjetwzNA+GqUWEBQhoVJNukdcxLQ4QFrIspoP5YavbahFarYpFdbzehvXVLTut146YjswDBhdGViKiUia9UEFYf1scEiwYswLGCYUwLCerTNlW1gLtOpOS63wbRCpCAOCHCgmzrEG6YbDYbk/DcrGCpmVGLVBVajWlKXIRqzWA4wNQTZIvTdMaaMwKlnC/Jyw3q0zZqOy0O3yb4KK3glzbM1ZhtH6wYL1MCiziPKwyGXP01vmyBbEejArq20Uje0gMLPZxL1heqDKZLTyNR42F88BBE124Ti9Sk2aMXxwyLNwW2Nu9WHkaVibT0jAJbKu7v3pUvONsH/2r80Bc6WlWSMzfF4cPC7RhlOH0OCM8DWblEdzN9nDt4HD3UXHp0tLSUnHXDqstM7KPbQWaFYln8ihsLQ4b1koqRcKWHvUKCfp8rGAWj+jQ8B8ttlqtNfvcFTQNwxzh7Di74m9WZPbNjRtvssYO5KTKavHud0OE1eE7nWaz3a7CuwlOHPxZYcmD5zl8hoCDakAjSP64sQ61UbHgXb+LYP00PFiwAYPSIleP+O7PKrMVXJjh3PPs0NZmUJCqbLy9AfV2I2tsyWZ/gLTu2nvS/e0bBvyOfRYEK4BVL1ieZ+X4oMhO3li/oWr9H6TBKpv9HtKyl2n6CYtzTXjDYd0JgBWACiriZRDq9KEgw5rc0FjdeLtOmqyy8su7P9hp9BEWx6d4/44h+ySAVZBhGbCATUEXAkCtR8ZgwLqxQZqskOzxvY+w1Emm/mNdAiwrILhbsKodXkHiNQWMqQGEHIxqktRCFrSst3ZYDhp9tCw0ydR/MqAPrJLKqryFoPgx02IWAGKbV2okCitMwIQxIPboC0JYb3TT2vjRxmqAsEA71Qlww0M7LG34TOn/pdcw7/zwz3flzL1fTsoI2T3/AA8Ax2nIfPs4QAzklP3xxwpk+XZDbQzV+G6xclbh+xnggXviqTZQTf3JXvkr/Xz6CG2QCguZzD2JSmfK7wu/3IM2NvWLg5az/oeQ+ccsMdAHKxsb66o5vdmAemNn5TSsAaUOaoeXbq0d7B+u7u4eqiMd7fX30mlO+lcJGlYhdwIx5aRff4c/fijfkwqSA9aLgNSBnoPSfiLU9Q97xKv1dWRQyBMnKxXSwWqwsAwdrO4ePdorFmFX7uhwjWVh6yUSrN0L/52jpJ8vLeROJAn+eyClT3Pvc9S7XIE6LdthPfeHRS/n84WCuprm1JUrV65evZoNjFdZNVZZibudletZ2CBgsftL2lOd1QMWkeJEnq8SrP2R4WspnculC4XyB2hLD8qnhYKUOS1IhTQ0Lxsrj2cWBipiM69eqbFeK9W4HCZnwGBlgwxrMJbVgrCO9lvqWiBcm5dl9NzKkcKXFnI/p3MSJLMgLWTKv0vSr+U/JOk3SvrdszH0YHVWcCzY27gZwKpSUZvBt3pYD8FqMLDYO12jSAdqKbmpxWNH0Pq3dPLVewnmDPc+wiBVPvkIubz/cE+SHKx2ffvRy3k7rMYx448KxvP1CqS1vvHG267cD6QH1JHGGntrIK7j4c7rX6RbZW0EiPqlrH55IH10eKH/VBR6bjOPLf6b2wmwKxTZ12HnBi9jZXsY1uDLylbPxOWH0h+OUA7RvIfeaN8UVKDBPZEqBMSqiiuyh2A13IlO9vbwg9OIoLYkZ+IQ0BYiWsS8YVyBwV2HlcU2ZZMNy97jgalobssJ6x0M9nb1Oih9dkVtEmeOfViRWZhOkG+RG94gI7EaphsSNtOCHE5dflj+WXIkDrhhgY5nnY9GgZ6a9WGVXd/Y+AcqYanf/Fh5RPfBwwJck7e6cVj/EPWeP0i/OWEtSO/sbomzapOk5yBvFOh9nVCN7DBZUA3MB5UPqwHX4AEv24zBbBDVqgxMExyFBucWfDQbWnqMZDxti6A/Tfuw0oOVw9qc8qExyHHwgGdk0W4KLYxVppyW3tlMq/yr9N62wdYt5HiG8Rt2Avy6hF6wwrIaICyuKbufu+i1B818XH5Y/gg7PthnR72BU/yW+wP+JfcNPcE6B6sBwqqnGHOmk3XTAmoRDVdzet0te+Kw5TqmX30U+KHSU/dsACp/VoOCBaoyNmCSxbJw4UnJwrFg98PfpTTOruV9bI+zBT7LqeCpaBRWA4KFRgCSVuWXXsICtfDC5OPwQ/jxxPq4FX5qNOcdsTwIuln5NISDgwVDMWmxYolHxT3szoXnJhGYl2J+WMYTr60Iqxq1vQyLqVzrjSrIrgYDC3QYkrGGtmhDlg+t37NdE88UnldhfZ1yUHnUdT6PQQ1kdnqnN6tKbO83PC8stCYpgz1B7D5CsPaxPVjiddnth+U/JKNIems/yvwAUHWhqkz/x1WD8GA1NfS5OyLMHfE2nkVrszkCkHCwpYd0q3xVPtH7OuUX0RYWo+c6NjBMZbrRcNqVG9VkZWroE504NIfB0cYXXWt+sOzzrbKWl5qwJFQkLWdetKJNO6E/FTjMEaFVNXK52d6sJmaoYU+hUwdMOTolbNejk8IKH9/ZGkCYdZXL9x4sR53NRG/m52kZR5V2svKI7JPXGtTw5xuiWmSoOc1zkpQ7+ZDLZcqaHkinD04laT7qAmz0fCH/qaqZFjnxnxwVitU0eq/xkGEBxW1YfrDyaaqQS1MLH387OTn57ZSiqFwhXYgMi5ijqLwetkj0uuLcQrYXqsrsTDoBsEh3xPIWPac9x0LEkPR36RWWI8Oiz/LUFXWUEbkNGVBTAQVRjdXNnHay4cJCKRYZanV7+tPXsz6KfFZU/lPDVlbKNRqzWf+CqKZp49Xiw4XFrYT1QnrZj1V0WAR9VQ1b5Gx6+mYvVJMTCzPpRMBCXsi41zf3ur/l+CwLhq0CvFx+smKbeelpVdnjhvX4bKiwQJsJHbLONn1YzUc7pzpMxwpbwagm68lZqkANWSEXkKaJvNcLZvPRAjzLPju6f7sr0PMobPUwqmytzSUIFh8e1tz81IKHpjY/RaDFrqFFbUql2ywKW2dtMghVFo21SxAsBcEKtSs97xezvo7Aqms8sX3CwrBVYFEV0A+VtrREwmAxod5HFEdrKFizNkotFLauciveoCazxiocSYMVamJ8DK0hPmmj9IxF3Z5l2hPV5elPxjUlCBYK8O6X5XjrLD3lofR86NPio1ShHxLEFQqGLbdR3dxpNMyDJgcWoaYO7ncUeYmecwxF01QInzmwwmPcsrTeJuDtpCamqQZFXTUbjQTBUmsOobLSOJJS2lrYpqQ+CvqUL2xaYWuycg2SyqVtHc4EweJqiFaYzmEMAR4bHVe6LWgHzefPRASqsqJ0ZhszeocZu5UEwdISrTAh3t+ywqYO2GJ4pVd6xZCem6OJalVEM33oq0a/hkpbqVuCYBGEutCSHGJHmJR6anM53InUtrCEdOnpHa9CNL1s3A1eI0sSLK6umlYIR6Tn8AGhWIAPmcC3Xt2//eTO4eNui/Z+QyJMvIw7OUsmLPRsB9EK8zamqYIq43wUhT7lQ/d2BEFgWf83SUIuBqwCvjFJsLQeTzhaqs6M2LWpUQrBCnBiJ0Rpg97UbofaxI6ZKFgEkDXbWgm5ZAxtxPWzkCaFFvSshzqyHrRslepkwSKqjEYr5Ova6TnVtL4OF6sAR/Ay0wxntnqVPz+XXFhaUQvhCrl69Nz87NebYewKAK5ZJyOstJxGTQg1hR86YbC0QTSacTVD4aLR/LdeOwEOtBWSca+oG3BcFYy9fU0aLIsWydTC4eolSKqpyAzDkHyExY7oT8gP82eJhoXRgtbVARdbdBs6H9GpkxAU47cKuJ9Qzzpv75knDxbBNUkLF6m0z7FImCoEqq3UkElBVHUxInZ6ypW3JRAWWprcpAVvU1aaICowwHFEE0231xI3pl6NbKH0/JU52rkpebDUFU4sXPBeGX29vhDI9En2dTVIGdYZ1apUzbly3GTCgtGljtFSgZFyXelUtTW1nNS0lUA4hKmjrMikCQrFPf7zf+8Oh95WTpIOYnBTra7wfLNdFY1OiyhW280Or9Q1SvgfMWS9HdfbPogEw1J7Ji5cJjOMCuP4bO1W48UYUSUZlrm4rxevnoqfFNE3WIVPdDzi2kpkXkyKXIGkYroCTMQU1Q9Y6fzV+LSzfZlJhSOGvPHy9k6MJ8dF4RXHGGGlvQZunFOFmUYDre9PpjwiE0aJISs3j3cajZkYz21Xuk+w4hWF3hwxtXN8baKSZVKMXakUmb18c3t6ttBo5Pp5FTYlF5YqispBZI2ZKfS6jeNtpOPj4+md2XQDbc55leX7p4TDMoRe5AI1A4W+O9xjUBoRWMnQGFYEjWFF0BhWBF0MVq5v6U0idaEpdIzvyJZ45TXy1q7BXEfYyZkTnro8GP1PTw3oSrwpTFy2w6r47DYY3fzfXhrq5U1MVBIEC+IK1pCvLmGwEq4xrAgaw4qgMawIcsIaTNs8mnLC2sl5j38da2oqt2OHlUpda3xhfZuwyjW2nRk8NK7ZxlAqbskW1ZituLo7SNuN3FgOmWblhJWqTI/lUCXlB2usQI1hRdAYVgT9F6CHWqMoT+bfAAAAAElFTkSuQmCC'),
                        subtitle: const Text(
                            '''Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit amet consectetur adipisci[ng] velit, sed quia non numquam [do] eius modi tempora inci[di]dunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum[d] exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? [D]Quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur? [33] At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias excepturi sint, obcaecati cupiditate non provident, similique sunt in culpa, qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. '''),
                      ),
                    ),
                  ),
                );
              },
              childCount: 50,
            ),
          )
        ],
      ),
    );
  }
}
